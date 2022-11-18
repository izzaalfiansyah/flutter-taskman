// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

const cPrimary = Colors.purple;

var menu = [
  {
    'path': '/task',
    'icon': Icons.list_alt_outlined,
    'activeIcon': Icons.list_alt_outlined,
  },
  {
    'path': '/',
    'icon': Icons.home_outlined,
    'activeIcon': Icons.home,
  },
  {
    'path': '/notification',
    'icon': Icons.notifications_none_outlined,
    'activeIcon': Icons.notifications,
  },
];

var shadow = [
  BoxShadow(
    color: Colors.grey.shade200,
    blurRadius: 6,
    offset: Offset(2, 3),
  ),
];
