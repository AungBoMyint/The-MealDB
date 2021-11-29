import 'package:flutter/material.dart';
import 'package:meal_app/hive/meal_hive.dart';

class TopImageWidgetOffline extends StatelessWidget {
  final MealHive mealHive;
  const TopImageWidgetOffline({Key? key, required this.mealHive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final memoryImage = mealHive.image;
    if (memoryImage != null) {
      return SizedBox(
        height: size.height * 0.4,
        child: Image.memory(memoryImage, fit: BoxFit.cover),
      );
    } else {
      return const SizedBox(height: 0);
    }
  }
}
