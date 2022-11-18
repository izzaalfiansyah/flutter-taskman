// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:taskman/constant.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 1500), () {
      Navigator.of(context).pushNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.task_alt,
            color: Colors.white,
            size: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Taskman',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
