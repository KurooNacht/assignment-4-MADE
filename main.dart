import 'package:flutter/material.dart';
import 'package:routingtest/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Initially display FirstPage
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('assignment 4'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Warteg AW',
              style: TextStyle(fontSize: 50),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              child: Text('pesan sekarang'),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/second',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const SecondPage({
    key,
    required this.data,
  }) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MENU',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        titleSpacing: NavigationToolbar.kMiddleSpacing,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Second Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              widget.data,
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              child: Text('Go to third'),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/third',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const ThirdPage({
    key,
    required this.data,
  }) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'third Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              widget.data,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
