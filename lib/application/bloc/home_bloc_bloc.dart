import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meal_app/domain/core/area_list.dart';
import 'package:meal_app/domain/core/category_list.dart';
import 'package:meal_app/domain/core/foodlist_by_something.dart';
import 'package:meal_app/domain/core/meal_detail.dart';
import 'package:meal_app/infrastructure/network/network_request.dart';
import 'package:meal_app/infrastructure/parser/area_list_parser.dart';
import 'package:meal_app/infrastructure/parser/category_list_parser.dart';
import 'package:meal_app/infrastructure/parser/foodlist_by_something_parser.dart';
import 'package:meal_app/infrastructure/parser/meal_parser.dart';

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';
part 'home_bloc_bloc.freezed.dart';

class HomeBlocBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  HomeBlocBloc() : super(HomeBlocState.initial()) {
    //All Url For Meal API
    const _areaListUrl =
        "https://www.themealdb.com/api/json/v1/1/list.php?a=list";
    const _filterUrl = "https://www.themealdb.com/api/json/v1/1/filter.php";
    const _categoryListUrl =
        "https://www.themealdb.com/api/json/v1/1/categories.php";
    const _searchUrl = "https://www.themealdb.com/api/json/v1/1/search.php";
    const _mealDetailUrl = "https://www.themealdb.com/api/json/v1/1/lookup.php";
    //

    on<GetAreaList>(
      (event, emit) async {
        //Request Area List From API
        final areaList = NetworkRequest(url: _areaListUrl)
            .executeGet(parser: AreaListParser());
        final dropDownAreaName =
            await areaList.then((value) => value.meals[0].areaName);

        emit(state.copyWith(
          areaList: areaList,
          dropDownAreaValue: dropDownAreaName,
          foodListType: dropDownAreaName,
        ));

        // ignore: unnecessary_this
        add(ChangeFoodList(
          query: {'a': dropDownAreaName},
          url: _filterUrl,
        ));
      },
      transformer: sequential(),
    );

    //Get Category List At The First Time
    on<GetCategoryList>(
      (event, emit) async {
        /* emit(state.copyWith(
          isLoading: true,
        ));*/
        //Request Area List From API

        final categoryList = NetworkRequest(url: _categoryListUrl)
            .executeGet<CategoryList>(parser: CategoryListParser());

        emit(state.copyWith(
          categoryList: categoryList,
        ));
      },
      transformer: sequential(),
    );

    //Change Food List Whenever Area is changed or Category is changed
    on<ChangeFoodList>(
      _onChangeFoodList,
      transformer: sequential(),
    );

    on<RequestMealDetail>((event, emit) async {
      emit(state.copyWith(mealDetail: null));
      await NetworkRequest(
        url: _mealDetailUrl,
        query: {'i': event.id},
      )
          .executeGet<MealDetail>(parser: MealParser())
          .then((value) => emit(state.copyWith(mealDetail: value)));
    }, transformer: sequential());

    //Change Area When Drop Down is selected
    on<ChangeArea>(
      (event, emit) {
        emit(state.copyWith(
          dropDownAreaValue: event.dropDownString,
          foodListType: event.dropDownString,
          categoryIndex: null,
        ));

        add(ChangeFoodList(
          query: {'a': event.dropDownString},
          url: _filterUrl,
        ));
      },
      transformer: sequential(),
    );

    //Change Category When a category is selected
    on<ChangeCategory>(
      (event, emit) async {
        emit(state.copyWith(
          categoryIndex: event.index,
          foodListType: event.categoryName,
        ));

        add(ChangeFoodList(
          query: {'c': event.categoryName},
          url: _filterUrl,
        ));
      },
      transformer: sequential(),
    );

    //Search Meal When User search
    on<SearchMeal>(
      (event, emit) {
        emit(state.copyWith(
          foodList: null,
          searchText: event.searchText,
          foodListType: event.searchText,
        ));

        add(ChangeFoodList(
          query: {'s': event.searchText},
          url: _searchUrl,
        ));
      },
      transformer: sequential(),
    );
    on<AddExpansionTileValue>(
        (event, emit) => emit(state.copyWith(isExpand: event.value)));
  }

  //Change Food List Method For All API Request Relating This.
  FutureOr<void> _onChangeFoodList(event, Emitter<HomeBlocState> emit) async {
    emit(state.copyWith(
      foodList: null,
      isLoading: true,
      hideLoading: false,
    ));
    print("Calling Chang Food List");
    await NetworkRequest(url: event.url, query: event.query)
        .executeGet<FoodListBySomething>(parser: FoodListBySomethingParser())
        .then((value) {
      emit(state.copyWith(
        foodList: value,
        isLoading: false,
        hideLoading: true,
      ));
      print("Food List Request Finished");
    });

    await Future.delayed(const Duration(seconds: 3)).then((value) {
      emit(state.copyWith(
        isLoading: false,
        hideLoading: false,
      ));
      print("isLoading: false, hideLoading: false");
    });
  }
}
