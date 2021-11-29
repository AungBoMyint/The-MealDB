import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/application/bloc/home_bloc_bloc.dart';
import 'package:meal_app/hive/meal_hive.dart';

class MiddleWidgetOffline extends StatelessWidget {
  final MealHive mealHive;
  const MiddleWidgetOffline({Key? key, required this.mealHive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mealHive.name,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue, elevation: 10),
                  onPressed: () {},
                  child: Text(
                    mealHive.area,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green, elevation: 10),
                  onPressed: () {},
                  child: Text(
                    mealHive.category,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Description",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ExpansionTile(
              tilePadding: const EdgeInsets.all(0),
              onExpansionChanged: (value) {
                BlocProvider.of<HomeBlocBloc>(context)
                    .add(AddExpansionTileValue(value: value));
              },
              childrenPadding: const EdgeInsets.all(0),
              title: BlocConsumer<HomeBlocBloc, HomeBlocState>(
                builder: (context, state) {
                  return state.isExpand
                      ? const SizedBox(height: 0)
                      : Text(
                          mealHive.instructions,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          style: const TextStyle(fontSize: 18),
                        );
                },
                listener: (context, state) {},
              ),
              children: [
                Text(
                  mealHive.instructions,
                  style: const TextStyle(fontSize: 18),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
