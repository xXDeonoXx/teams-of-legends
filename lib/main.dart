import 'package:flutter/material.dart';
import 'package:teams_of_legends/screens/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teams of Legends',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/invites', // don't forget to change this back to /
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
