// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:taskman/components/bottomnav.dart';
import 'package:taskman/components/dashboarditem.dart';
import 'package:taskman/components/taskitem.dart';
import 'package:taskman/constant.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 20,
                  right: 20,
                  left: 20,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Taskman',
                          style: TextStyle(
                            color: cPrimary,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.account_circle,
                          size: 40,
                          color: cPrimary,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(text: 'Halo, '),
                                TextSpan(
                                  text: 'Alfiansyah',
                                  style: TextStyle(
                                    color: cPrimary,
                                  ),
                                ),
                                TextSpan(text: '!'),
                              ],
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.grey.shade800,
                              ),
                            ),
                          ),
                          Text(
                            'Semoga hari anda menyenangkan!',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      4,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: DashboardItem(
                            name: 'Projek $index',
                            detail: 'Backend Developer',
                            date: '18 Nov 2022',
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'Hari ini',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(20),
                children: List.generate(
                  5,
                  (index) {
                    return TaskItem(
                      name: "Projek $index",
                      datetime: '23:55',
                      action: GestureDetector(
                        child: Icon(
                          Icons.edit_outlined,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
