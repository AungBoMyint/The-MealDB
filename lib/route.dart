import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_app/presentation/pages/home_page.dart';
import 'package:meal_app/presentation/pages/initial_page.dart';

import 'presentation/pages/detail_page.dart';
import 'presentation/pages/saved_page.dart';

class RouteGenerator {
  static const String initialPage = "/";
  static const String homePage = "/homePage";
  static const String detailPage = "/detailPage";
  static const String savedPage = "/savedPage";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialPage:
        return MaterialPageRoute(builder: (_) => const InitialPage());
      case homePage:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case detailPage:
        return MaterialPageRoute(builder: (_) => const DetailPage());
      case savedPage:
        return MaterialPageRoute(builder: (_) => const SavedPage());
      default:
        throw const PageNotFoundException(errorString: "Page Not Found");
    }
  }
}

class PageNotFoundException implements Exception {
  final String errorString;
  const PageNotFoundException({required this.errorString});
}
