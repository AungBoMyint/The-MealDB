import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_app/application/save_bloc/bloc/save_bloc.dart';
import 'package:meal_app/domain/core/meal.dart';

class TopImageWidget extends StatelessWidget {
  final Meal meal;
  final bool downloadIconHide;
  final double height;
  const TopImageWidget(
      {Key? key,
      required this.meal,
      required this.height,
      required this.downloadIconHide})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: height * 0.4,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: height * 0.4,
              width: size.width * 0.99,
              child: CachedNetworkImage(
                imageUrl: meal.image,
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
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          if (!downloadIconHide) ...[
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(
                iconSize: 30,
                onPressed: () {
                  //Show Snack Bar
                  const snackBar = SnackBar(
                    content: Text("Downloading this items",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                    backgroundColor: Colors.black,
                    elevation: 10,
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  //Start Download Event
                  BlocProvider.of<SaveBloc>(context).add(StartDownload(
                    mealId: int.parse(meal.id),
                    meal: meal,
                  ));
                },
                icon: const FaIcon(FontAwesomeIcons.fileDownload,
                    color: Colors.white),
              ),
            )
          ]
        ],
      ),
    );
  }
}
