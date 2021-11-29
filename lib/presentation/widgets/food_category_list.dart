import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_app/application/bloc/home_bloc_bloc.dart';
import 'package:meal_app/domain/core/category_list.dart';

class FoodCategoryList extends StatelessWidget {
  const FoodCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      builder: (context, state) {
        return FutureBuilder(
          future: state.categoryList,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return ErrorWidget("Fail Getting Cateogry List");
            }
            if (snapshot.hasData) {
              final categoryList = snapshot.data as CategoryList;
              return SizedBox(
                height: 120,
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 5);
                    },
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryList.categories.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => BlocProvider.of<HomeBlocBloc>(context)
                            .add(ChangeCategory(
                          categoryName: categoryList.categories[index].name,
                          index: index,
                        )),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 100,
                                child: Card(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: state.categoryIndex == index
                                            ? Colors.green
                                            : Colors.white,
                                        width: 3,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    elevation: 10,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: CachedNetworkImage(
                                        imageUrl: categoryList
                                            .categories[index].image,
                                        fit: BoxFit.cover,
                                        progressIndicatorBuilder:
                                            (context, url, status) {
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
                                    )),
                              ),
                              BlocConsumer<HomeBlocBloc, HomeBlocState>(
                                builder: (context, state) {
                                  return Text(
                                      categoryList.categories[index].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: state.categoryIndex == index
                                              ? Colors.black
                                              : Colors.grey));
                                },
                                listener: (context, state) {},
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        );
      },
      listener: (context, state) {},
    );
  }
}
