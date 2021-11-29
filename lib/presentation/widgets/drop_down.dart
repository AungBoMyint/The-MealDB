import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/application/bloc/home_bloc_bloc.dart';
import 'package:meal_app/domain/core/area_list.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBlocBloc, HomeBlocState>(
      builder: (context, state) {
        return FutureBuilder(
            future: state.areaList,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final areaList = snapshot.data as AreaList;
                return SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //App Name
                      SizedBox(
                        width: 200,
                        child: Text("Delicious Meal For You.",
                            style: GoogleFonts.lobster(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                      const SizedBox(width: 10),
                      const FaIcon(
                        FontAwesomeIcons.mapMarker,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 10),
                      DropdownButton<String>(
                        iconSize: 0,
                        //icon: const Visibility(
                        //  visible: false, child: Icon(Icons.arrow_drop_down)),
                        value: state.dropDownAreaValue,
                        focusColor: Colors.green,
                        elevation: 0,
                        style: const TextStyle(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(20),
                        onChanged: (String? value) =>
                            BlocProvider.of<HomeBlocBloc>(context)
                                .add(ChangeArea(dropDownString: value ?? '')),
                        items: areaList.meals
                            .map<DropdownMenuItem<String>>(
                                (area) => DropdownMenuItem<String>(
                                    value: area.areaName,
                                    child: SizedBox(
                                      width: 70,
                                      child: Text(area.areaName,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue)),
                                    )))
                            .toList(),
                      )
                    ],
                  ),
                );
              }
              if (snapshot.hasError) {
                return ErrorWidget("Fail Getting Area List");
              }
              return const SizedBox(
                height: 0,
                width: 0,
              );
            });
      },
      listener: (context, state) {},
    );
  }
}
