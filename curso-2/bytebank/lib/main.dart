import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent[900]),
            primaryColor: Colors.green[900],
            buttonTheme: ButtonThemeData(
            buttonColor: Colors.red[700],
            textTheme: ButtonTextTheme.primary
          ),

        ),
        home: Dashboard(),
    );
  }
}


