import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:meal_app/domain/core/meal.dart';

class IngredientsWidget extends StatelessWidget {
  final Meal meal;
  const IngredientsWidget({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mapMeal = meal.toJson();
    return SizedBox(
      height: 150,
      width: 150,
      child: ListView(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: mapMeal.entries.map((entries) {
          if (entries.key.startsWith('strIngredient')) {
            final imageString = entries.value as String;
            if (imageString.isNotEmpty &&
                !imageString.contains('no ingredient')) {
              final eachImageUrl =
                  "https://www.themealdb.com/images/ingredients/$imageString.png";
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
                        CachedNetworkImage(
                          imageUrl: eachImageUrl,
                          fit: BoxFit.fill,
                          progressIndicatorBuilder: (context, url, status) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  value: status.progress,
                                ),
                              ),
                            );
                          },
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            child: Text(imageString,
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
            } else {
              return const SizedBox(
                height: 0,
              );
            }
          }
          return const SizedBox(
            height: 0,
            width: 0,
          );
        }).toList(),
      ),
    );
  }
}
