// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:taskman/components/bottomnav.dart';
import 'package:taskman/components/taskitem.dart';
import 'package:taskman/constant.dart';

class Task extends StatefulWidget {
  Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.grey.shade300,
                )
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nov, 2022',
                      style: TextStyle(
                        fontSize: 30,
                        color: cPrimary,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: cPrimary,
                          boxShadow: shadow,
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pushNamed('/task/create');
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    topDate(date: '18', day: 'Jum', isActive: true),
                    topDate(date: '19', day: 'Sab'),
                    topDate(date: '20', day: 'Min'),
                    topDate(date: '21', day: 'Sen'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Task',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(10, (index) {
              return TaskItem(
                  name: 'Projek $index',
                  datetime: '18 Nov 2022 23:55',
                  action: Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.edit_outlined,
                          color: cPrimary,
                        ),
                      ),
                      SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.delete_outline,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ));
            }),
          )
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }

  Container topDate({required String date, required String day, bool isActive = false}) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: isActive ? 12 : 0),
      width: 75,
      decoration: BoxDecoration(
        color: isActive ? cPrimary : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        boxShadow: isActive ? shadow : null,
      ),
      child: Column(
        children: [
          Text(
            date,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey.shade700,
            ),
          ),
          Text(
            day,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey.shade700,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
