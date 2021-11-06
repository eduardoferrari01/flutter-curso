

import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BytebankApp());

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(
            secondary: Colors.lightBlueAccent[700],
          ),
          textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.blue)),
          elevatedButtonTheme:
              ElevatedButtonThemeData(style: ElevatedButton.styleFrom(primary: Colors.blueAccent[700]))),
      home: ListaTransferencias(),
    );
  }
}
