import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/application/bloc/home_bloc_bloc.dart';
import '../widgets/detail_widgets/detail_widgets.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    return Scaffold(
      body: BlocBuilder<HomeBlocBloc, HomeBlocState>(
        builder: (context, state) {
          if (state.mealDetail == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            final meal = state.mealDetail!.meals[0];
            return ListView(
              children: [
                TopImageWidget(
                  meal: meal,
                  height: height,
                  downloadIconHide: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                MiddleColumnWidget(
                  height: height,
                  name: meal.name,
                  category: meal.category,
                  area: meal.area,
                  description: meal.instructions,
                ),
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
                  child: IngredientsWidget(meal: meal),
                )
              ],
            );
          }
        },
      ),
    );
  }
}
