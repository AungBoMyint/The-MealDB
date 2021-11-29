import 'package:flutter/material.dart';
import 'package:meal_app/hive/meal_hive.dart';
import 'package:meal_app/presentation/widgets/detail_widgets_offline/ingredient_widget_offline.dart';
import 'package:meal_app/presentation/widgets/detail_widgets_offline/middle_widget_offline.dart';
import 'package:meal_app/presentation/widgets/detail_widgets_offline/top_image_widget.dart';

class DetailPageOffline extends StatelessWidget {
  final MealHive mealHive;
  const DetailPageOffline({Key? key, required this.mealHive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            TopImageWidgetOffline(mealHive: mealHive),
            const SizedBox(
              height: 15,
            ),
            MiddleWidgetOffline(mealHive: mealHive),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Ingredients",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: IngredientWidgetOffline(mealHive: mealHive),
            )
          ],
        ),
      ),
    );
  }
}
