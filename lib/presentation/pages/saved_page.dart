import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meal_app/application/save_bloc/bloc/save_bloc.dart';
import 'package:meal_app/hive/meal_hive.dart';
import 'package:meal_app/presentation/pages/detail_page_offline.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: Hive.box<MealHive>("firstMealBox").listenable(),
        builder: (context, Box<MealHive> mealBox, _) {
          //If Hive Database is Empty we show message Text
          if (mealBox.isEmpty) {
            return Center(
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Image.asset("image/meal_box.png"),
                        Text(
                          "Haven't you saved any meal yet!.",
                          style: GoogleFonts.hind(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                  color: Colors.green, width: 6),
                            ),
                          ),
                          onPressed: () => BlocProvider.of<SaveBloc>(context)
                              .add(const ChangeBottomNavigationBar(value: 0)),
                          child: const Text("Let's explore.",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return ListView(
                children: mealBox.values.map((mealHive) {
              final mealImage = mealHive.image;
              return Dismissible(
                background: Container(
                  color: Colors.black12,
                ),
                key: Key(mealHive.name),
                onDismissed: (direction) {
                  mealBox.delete(mealHive.id);
                },
                direction: DismissDirection.startToEnd,
                confirmDismiss: (direction) => _getConfirm(context, direction),
                child: InkWell(
                  onTap: () {
                    if ((mealHive.progressValue.roundToDouble() * 100) ==
                        100.0) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              DetailPageOffline(mealHive: mealHive)));
                    } else {
                      const snackBar = SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Downloading is not complete...",
                            style: TextStyle(color: Colors.white)),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: SizedBox(
                    height: size.height * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Card(
                          elevation: 10,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    if (mealImage != null) ...[
                                      Container(
                                        width: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Image.memory(
                                          mealImage,
                                          width: 150,
                                        ),
                                      )
                                    ] else ...[
                                      const SizedBox(
                                        height: 150,
                                        width: 150,
                                        child: Center(
                                            child: SizedBox(
                                                height: 50,
                                                width: 50,
                                                child:
                                                    CircularProgressIndicator())),
                                      )
                                    ],
                                    const SizedBox(width: 10),
                                    //Meal Name
                                    SizedBox(
                                      width: 150,
                                      child: Text(mealHive.name,
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),

                                ///Downloading Linear Progress
                                if ((mealHive.progressValue.roundToDouble() *
                                        100) ==
                                    100.0) ...[
                                  const FaIcon(
                                    FontAwesomeIcons.checkCircle,
                                    color: Colors.green,
                                  )
                                ] else ...[
                                  LinearPercentIndicator(
                                    width: size.width * 0.9,
                                    lineHeight: 14.0,
                                    percent: mealHive.progressValue,
                                    center: Text(
                                        "${mealHive.progressValue * 100}%",
                                        style: const TextStyle(
                                            color: Colors.white)),
                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                    progressColor: Colors.red,
                                  )
                                ]
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }).toList());
          }
        },
      ),
    );
  }

  //Show Confirm Dialog to notify Delete or Not
  Future<bool?> _getConfirm(
      BuildContext context, DismissDirection direction) async {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.red,
          title: const Text("Confirm",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          content: const Text("Are you sure to delete this item?",
              style: TextStyle(
                color: Colors.white,
              )),
          actions: [
            OutlinedButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text("No",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            OutlinedButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text("Yes",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            )
          ],
        );
      },
    );
  }
}
