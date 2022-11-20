// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskman/constant.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({
    Key? key,
    required this.name,
    required this.detail,
    required this.date,
  }) : super(key: key);

  final String name;
  final String detail;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * .7,
      decoration: BoxDecoration(
        color: cPrimary,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 6,
            offset: Offset(2, 10),
          )
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.task_alt,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            height: 120,
            alignment: Alignment.centerLeft,
            child: Text(
              detail,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            date,
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
