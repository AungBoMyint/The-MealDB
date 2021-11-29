import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/application/bloc/home_bloc_bloc.dart';
import 'package:meal_app/presentation/widgets/drop_down.dart';
import 'package:meal_app/presentation/widgets/food_category_list.dart';
import 'package:meal_app/presentation/widgets/grid_view.dart';
import 'package:meal_app/presentation/widgets/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Request First Time Area List
    return SafeArea(
        child: ListView(
      children: [
        const Align(
          alignment: Alignment.center,
          child: DropDownWidget(),
        ),
        const SizedBox(height: 10),
        const Padding(padding: EdgeInsets.all(8), child: SearchWidget()),
        const FoodCategoryList(),
        //Food List Type Title String
        BlocConsumer<HomeBlocBloc, HomeBlocState>(
          builder: (context, state) {
            return Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("${state.foodListType} Meals",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black)));
          },
          listener: (context, state) {},
        ),
        //Space
        const SizedBox(height: 7),

        BlocConsumer<HomeBlocBloc, HomeBlocState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            return const GridViewWidget();
          },
          listener: (context, state) {},
        ),
      ],
    ));
  }
}
