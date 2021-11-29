import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:meal_app/application/bloc/home_bloc_bloc.dart';
import 'package:meal_app/route.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      builder: (context, state) {
        if (state.foodList == null) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.foodList?.meals == null) {
          return Center(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
                "This ${state.searchText} type is not found in our database.\n"
                "Please! Try another meals",
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ));
        } else {
          final meals = state.foodList?.meals;
          return StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            crossAxisSpacing: 5,
            mainAxisSpacing: 8,
            shrinkWrap: true,
            primary: false,
            itemCount: meals!.length,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: InkWell(
                onTap: () {
                  BlocProvider.of<HomeBlocBloc>(context)
                      .add(RequestMealDetail(id: meals[index].id));
                  Navigator.of(context).pushNamed(RouteGenerator.detailPage);
                },
                child: Card(
                  elevation: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CachedNetworkImage(
                            imageUrl: meals[index].image,
                            fit: BoxFit.cover,
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
                            padding: const EdgeInsets.all(8.0),
                            child: Text(meals[index].name,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            staggeredTileBuilder: (int index) => const StaggeredTile.fit(2),
          );
        }
      },
      listener: (context, state) {},
    );
  }
}
