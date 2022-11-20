// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskman/constant.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    Key? key,
    required this.name,
    required this.datetime,
    required this.action,
  }) : super(key: key);

  final String name;
  final String datetime;
  final Widget action;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 6,
            offset: Offset(2, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: cPrimary,
                  shape: BoxShape.circle,
                ),
                margin: EdgeInsets.only(right: 12),
                child: Icon(
                  Icons.list_alt,
                  color: Colors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(
                    datetime,
                    style: TextStyle(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              )
            ],
          ),
          action,
        ],
      ),
    );
  }
}
