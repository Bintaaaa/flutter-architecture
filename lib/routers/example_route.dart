import 'package:flutter/material.dart';
import 'package:flutter_architecture/routers/example_app_route.dart';

class ExampleRoute {
  static final navigatorKey = GlobalKey<NavigatorState>();

  void goToExampleScreen() => navigatorKey.currentState?.pushNamed(
        ExampleAppRoutes.example,
      );
}
