// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskman/constant.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            color: Colors.grey.shade300,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          menu.length,
          (index) {
            var item = menu[index];
            var isActive = item['path'] == ModalRoute.of(context)?.settings.name;
            var icon = isActive ? item['activeIcon'] : item['icon'];
            var color = isActive ? cPrimary : Colors.grey;

            return IconButton(
              color: color,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(item['path'] as String);
              },
              icon: Icon(
                icon as IconData,
                color: color,
              ),
            );
          },
        ),
      ),
    );
  }
}
