import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptiveFlatButton extends StatelessWidget {
  final Function _buttonAction;
  final String text;

  AdaptiveFlatButton(this.text, this._buttonAction);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: _buttonAction,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: _buttonAction,
          );
  }
}
