import 'package:flutter/material.dart';
import 'package:meal_app/hive/meal_hive.dart';

class IngredientWidgetOffline extends StatelessWidget {
  final MealHive mealHive;
  const IngredientWidgetOffline({Key? key, required this.mealHive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ingredientList = mealHive.ingredientHiveList;
    if (ingredientList!.isNotEmpty) {
      return SizedBox(
        height: 150,
        width: 150,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          primary: false,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Card(
                  elevation: 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.memory(
                        ingredientList[index].ingredientImage,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          child: Text(ingredientList[index].name,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ))),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: 10);
          },
          itemCount: ingredientList.length,
        ),
      );
    } else {
      return const SizedBox(height: 0);
    }
  }
}
