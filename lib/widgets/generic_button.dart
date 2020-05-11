import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {
  GenericButton({@required this.onPressed, @required this.child});

  final Function onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoButton(
        onPressed: onPressed,
        child: child,
      );
    } else {
      return MaterialButton(
        onPressed: onPressed,
        child: child,
      );
    }
  }
}
