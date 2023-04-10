import 'package:flutter/material.dart';
import 'first_page.dart';
import 'package:test/route.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Page Navigation Demo",
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      routes: {
        '/': (context) => HomePage(),
        '/first': (context) => FirstPage(),
      },
    );
  }
}
