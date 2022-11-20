// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:taskman/constant.dart';

class TaskCreate extends StatefulWidget {
  TaskCreate({Key? key}) : super(key: key);

  @override
  State<TaskCreate> createState() => _TaskCreateState();
}

class _TaskCreateState extends State<TaskCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimary,
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .362,
            padding: EdgeInsets.all(20),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                      Text(
                        'Buat Task Baru',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      labelText: 'Nama Task',
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'Masukkan Nama Task Kamu',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: 'Tanggal',
                      labelStyle: TextStyle(color: Colors.white),
                      hintText: 'yyyy-mm-dd',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .6,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        labelText: 'Waktu',
                        hintText: '00:00',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: 'Deskripsi Task',
                        hintText: 'Masukkan Deskripsi Task',
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    color: cPrimary,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          child: Text(
                            'Buat Task',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
