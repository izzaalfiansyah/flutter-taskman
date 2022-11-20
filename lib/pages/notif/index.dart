// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskman/components/bottomnav.dart';
import 'package:taskman/constant.dart';

class Notif extends StatefulWidget {
  Notif({Key? key}) : super(key: key);

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (ctx, index) {
            return Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: shadow,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.notification_important,
                  color: Colors.purple,
                ),
                title: Text('Notification $index'),
                subtitle: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
