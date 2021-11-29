import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:meal_app/domain/core/meal.dart';
import 'package:meal_app/domain/core/normal_ingredient.dart';
import 'package:meal_app/hive/ingredient_hive.dart';
import 'package:meal_app/hive/meal_hive.dart';
import 'package:path_provider/path_provider.dart';

part 'save_event.dart';
part 'save_state.dart';
part 'save_bloc.freezed.dart';

class SaveBloc extends Bloc<SaveEvent, SaveState> {
  SaveBloc() : super(SaveState.initial()) {
    //Change BottomNavigationPage Event
    on<ChangeBottomNavigationBar>(
        (event, emit) => emit(state.copyWith(pageIndex: event.value)));

    //Start Download Meal Object Into Hive Database Event
    on<StartDownload>((event, emit) async {
      await mealObjectDownload(meal: event.meal, mealId: event.mealId);
    }, transformer: sequential());
  }
}

Future<void> mealObjectDownload(
    {required Meal meal, required int mealId}) async {
  int totalFileSize = 1;
  int completeSize = 0;
  List<NormalIngredient> normalIngredientList = [];
  //Get totalFielSize Logic//
  //1.First We Convert Meal to JsonObject to map and convert normal ingredient object
  final mealJsonObject = meal.toJson();
  mealJsonObject.forEach((key, value) {
    if (key.startsWith("strIngredient")) {
      if (key.isNotEmpty && !key.contains('no ingredient')) {
        final responseValue = value as String;
        final ingredientName = responseValue;
        final ingredientImage =
            "https://www.themealdb.com/images/ingredients/$responseValue.png";
        normalIngredientList.add(NormalIngredient(
          name: ingredientName,
          ingredientImage: ingredientImage,
        ));
        //We increase totalSize when we add NormalIngredientObject is add into list immediately.
        totalFileSize++; //So we don't need to loop again normalIngredientList
      }
    }
  });
  //We check list to ensure it is not empty
  print(normalIngredientList.length);
  //We start put meal into HiveDatabase for initial state
  final mealBox = Hive.box<MealHive>("firstMealBox");
  //We Change Meal to MealHive
  final normalMeal = MealHive(
    name: meal.name,
    category: meal.category,
    area: meal.area,
    instructions: meal.instructions,
    image: null,
    ingredientHiveList: [],
    progressValue: 0.0,
    id: mealId,
  );
  mealBox.put(mealId, normalMeal);
  //This Logic is really starting Download From Dio
  //1.First We get ApplicationDocumentDirectory
  await getApplicationDocumentsDirectory().then((directory) async {
    //2.we download meal's main image
    await Dio()
        .download(
      meal.image,
      "${directory.path}/${meal.image}",
    )
        .then(
      (response) async {
        //we increase complete downloaded size
        completeSize++;
        //3.Then we change downloaded file to Unit8List type
        await NetworkAssetBundle(Uri.parse(response.requestOptions.baseUrl))
            .load(response.requestOptions.path)
            .then((byteData) async {
          //4.we change Unit8List type and insert into Hive Database
          final Uint8List image = byteData.buffer.asUint8List();
          mealBox.put(
            mealId,
            normalMeal.copyWith(
              image: image,
              progressValue: completeSize / totalFileSize,
            ),
          );
          //5.Then we download each ingredient image
          await Future.forEach(normalIngredientList, (element) async {
            final normalIngredient = element as NormalIngredient;
            await Dio()
                .download(
              normalIngredient.ingredientImage,
              "${directory.path}/${normalIngredient.ingredientImage}",
            )
                .then(
              (responseDynamic) async {
                //we increase complete size
                completeSize++;
                //6.we change response downloaded url into Unit8List
                await NetworkAssetBundle(
                        Uri.parse(responseDynamic.requestOptions.baseUrl))
                    .load(responseDynamic.requestOptions.path)
                    .then((value) {
                  final ingredientImage = value.buffer.asUint8List();
                  //we get current meal and get ingredientImageList
                  final currentMeal = mealBox.get(mealId) as MealHive;
                  final ingredientList = currentMeal.ingredientHiveList;
                  ingredientList?.add(IngredientHive(
                    name: normalIngredient.name,
                    ingredientImage: ingredientImage,
                  ));
                  mealBox.put(
                    mealId,
                    currentMeal.copyWith(
                        ingredientHiveList: ingredientList,
                        progressValue: completeSize / totalFileSize),
                  );
                });
              },
            );
          });
        });
      },
    );
  });
}
