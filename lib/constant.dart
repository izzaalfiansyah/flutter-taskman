import 'package:flutter/material.dart';

const cPrimary = Colors.purple;

void navigatorPushReplace(context, {required page}) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => page));
}

void navigatorPush(context, {required page}) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
}

void navigatorPop(context, {page}) {
  Navigator.of(context).pop();
}
