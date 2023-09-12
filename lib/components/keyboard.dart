// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'button_row.dart';
import 'button.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) callback;

  const Keyboard(this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(48, 48, 48, 1),
      height: 500,
      child: Column(
        children: [
          ButtonRow([
            Button.big(text: 'AC',color: Button.DARK, callback: callback),
            Button(text: '%',color: Button.DARK, callback: callback),
            Button.operation(text: '/', callback: callback),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button(text: '7', callback: callback),
            Button(text: '8', callback: callback),
            Button(text: '9', callback: callback),
            Button.operation(text: 'x', callback: callback),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button(text: '4', callback: callback),
            Button(text: '5', callback: callback),
            Button(text: '6', callback: callback),
            Button.operation(text: '-', callback: callback),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button(text: '1', callback: callback),
            Button(text: '2', callback: callback),
            Button(text: '3', callback: callback),
            Button.operation(text: '+', callback: callback),
          ]),
          const SizedBox(height: 1),
          ButtonRow([
            Button.big(text: '0', callback: callback),
            Button(text: ',', callback: callback),
            Button.operation(text: '=', callback: callback),
          ]),
        ],
      ),
    );
  }
}
