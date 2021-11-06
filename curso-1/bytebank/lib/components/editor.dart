import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController _contralador;
  final String _rotulo;
  final String _dica;
  double fontSize;
  IconData icone;

  Editor(
    this._contralador,
    this._rotulo,
    this._dica, {
    this.icone= const IconData(0),
    this.fontSize= 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _contralador,
        style: TextStyle(fontSize: fontSize),
        decoration: InputDecoration(
          icon: icone.codePoint != 0 ? Icon(icone) : null,
          labelText: _rotulo,
          hintText: _dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
