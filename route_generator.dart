import 'package:flutter/material.dart';
import 'package:routingtest/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) {
          return FirstPage();
        });
      case '/second':
        return MaterialPageRoute(builder: (_) {
          return SecondPage(
            data: "",
          );
        });

      case '/third':
        return MaterialPageRoute(builder: (_) {
          return ThirdPage(
            data: "",
          );
        });

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
