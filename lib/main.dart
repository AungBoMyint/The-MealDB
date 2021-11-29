import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:meal_app/application/bloc/home_bloc_bloc.dart';
import 'package:meal_app/application/save_bloc/bloc/save_bloc.dart';
import 'package:meal_app/hive/ingredient_hive.dart';
import 'package:meal_app/hive/meal_hive.dart';
import 'package:meal_app/route.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<MealHive>(MealHiveAdapter());
  Hive.registerAdapter<IngredientHive>(IngredientHiveAdapter());
  await Hive.openBox<MealHive>("firstMealBox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBlocBloc>(
          create: (_) => HomeBlocBloc()
            ..add(const GetAreaList())
            ..add(const GetCategoryList()),
        ),
        BlocProvider<SaveBloc>(
          create: (_) => SaveBloc(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RouteGenerator.initialPage,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
