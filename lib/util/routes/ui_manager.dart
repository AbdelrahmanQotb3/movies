import 'package:flutter/material.dart';
import 'package:movies/features/presentation/view/home/home_screen.dart';
import 'package:movies/features/presentation/view/splash/splash_screen.dart';
import 'package:movies/util/exceptions/no_route_found_exception.dart';
import 'package:movies/util/routes/page_type/page_type.dart';

class UiManager {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    PageType page = pageMapping(settings);
    switch (page) {
      case PageType.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: settings,
        );
      case PageType.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
          settings: settings,
        );
      default:
        throw NoRouteFoundException();
    }
  }

  static PageType pageMapping(RouteSettings settings) {
    final page = PageType.values.firstWhere(
      (page) => page.name == settings.name,
      orElse: () => throw NoRouteFoundException(),
    );
    return page;
  }
}
