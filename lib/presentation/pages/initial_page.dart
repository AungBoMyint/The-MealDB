import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_app/application/save_bloc/bloc/save_bloc.dart';
import 'package:meal_app/presentation/pages/home_page.dart';
import 'package:meal_app/presentation/pages/pages.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Home Page and Save Page
    final List<Widget> _pages = <Widget>[
      const HomePage(),
      const SavedPage(),
    ];
    //Scaffold
    return BlocConsumer<SaveBloc, SaveState>(
      builder: (context, state) {
        return Scaffold(
            body: _pages[state.pageIndex],
            bottomNavigationBar: CurvedNavigationBar(
              height: 45,
              index: state.pageIndex,
              backgroundColor: Colors.blueAccent,
              items: const <Widget>[
                Icon(FontAwesomeIcons.home, size: 20),
                Icon(FontAwesomeIcons.save, size: 20),
              ],
              onTap: (index) => BlocProvider.of<SaveBloc>(context)
                  .add(ChangeBottomNavigationBar(value: index)),
            ));
      },
      listener: (context, state) {},
    );
  }
}
