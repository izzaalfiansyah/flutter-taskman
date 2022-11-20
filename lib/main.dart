import 'package:flutter/material.dart';
import 'package:taskman/constant.dart';
import 'package:taskman/pages/home.dart';
import 'package:taskman/pages/notif/index.dart';
import 'package:taskman/pages/splash.dart';
import 'package:taskman/pages/task/create.dart';
import 'package:taskman/pages/task/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taskman',
      theme: ThemeData(
        primarySwatch: cPrimary,
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: const Color.fromARGB(255, 254, 246, 255),
      ),
      initialRoute: '/splash',
      routes: {
        '/': (context) => Home(),
        '/splash': (context) => Splash(),
        '/task': (context) => Task(),
        '/task/create': (context) => TaskCreate(),
        '/notification': (context) => Notif(),
      },
    );
  }
}
