import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';

class MyDrive extends StatefulWidget {
  MyDrive({Key? key}) : super(key: key);

  @override
  _MyDriveState createState() => _MyDriveState();
}

class _MyDriveState extends State<MyDrive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white30,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.keyboard_arrow_left_outlined),
              onPressed: () => Navigator.of(context).pop('HomePage'),
              color: Colors.white,
            ),
          ),
        ),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Karma Drives',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 6, bottom: 6, left: 28, right: 28),
                  child: Text(
                    'MY DRIVES',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: 
          [Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8, bottom: 20, left: 15, right: 15),
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                                  Icon(Icons.search, color: Colors.white, size: 20),
                            ),
                          ),
                        ),
                        // contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.black,
                            ),
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Jay.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(top: 30, right: 40),
                            child: Column(
                              children: [
                                Text('9,523'),
                                Text('JOINED'),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 14.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 200),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CATEGORY',
                                    style: TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    'Jay Wheeler',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 5),
                                          child: Icon(Icons.lock_clock, size: 30),
                                        ),
                                        Text('05:00 AM'),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4, right: 4),
                                          child: Text('|'),
                                        ),
                                        Text('07 DEC 2019')
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            color: Colors.lightGreenAccent[700],
                                            elevation: 7.0,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8,
                                                  bottom: 8,
                                                  right: 50,
                                                  left: 50),
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Center(
                                                  child: Text(
                                                    'JOINED',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Container(
                                            child: Material(
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                              elevation: 7.0,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8,
                                                    bottom: 8,
                                                    right: 50,
                                                    left: 50),
                                                child: GestureDetector(
                                                  onTap: () {},
                                                  child: Center(
                                                    child: Text(
                                                      'Do Karma',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.black,
                            ),
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Jay.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(top: 30, right: 40),
                            child: Column(
                              children: [
                                Text('9,523'),
                                Text('JOINED'),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 14.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 200),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CATEGORY',
                                    style: TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    'Jay Wheeler',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 5),
                                          child: Icon(Icons.lock_clock, size: 30),
                                        ),
                                        Text('05:00 AM'),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4, right: 4),
                                          child: Text('|'),
                                        ),
                                        Text('07 DEC 2019')
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            color: Colors.lightGreenAccent[700],
                                            elevation: 7.0,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8,
                                                  bottom: 8,
                                                  right: 50,
                                                  left: 50),
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Center(
                                                  child: Text(
                                                    'JOINED',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Container(
                                            child: Material(
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                              elevation: 7.0,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8,
                                                    bottom: 8,
                                                    right: 50,
                                                    left: 50),
                                                child: GestureDetector(
                                                  onTap: () {},
                                                  child: Center(
                                                    child: Text(
                                                      'Do Karma',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 10, left: 20, right: 20, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.black,
                            ),
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/Jay.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(top: 30, right: 40),
                            child: Column(
                              children: [
                                Text('9,523'),
                                Text('JOINED'),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 14.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(top: 200),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'CATEGORY',
                                    style: TextStyle(fontStyle: FontStyle.italic),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    'Jay Wheeler',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 5),
                                          child: Icon(Icons.lock_clock, size: 30),
                                        ),
                                        Text('05:00 AM'),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 4, right: 4),
                                          child: Text('|'),
                                        ),
                                        Text('07 DEC 2019')
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            color: Colors.lightGreenAccent[700],
                                            elevation: 7.0,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8,
                                                  bottom: 8,
                                                  right: 50,
                                                  left: 50),
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Center(
                                                  child: Text(
                                                    'JOINED',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Container(
                                            child: Material(
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                              elevation: 7.0,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8,
                                                    bottom: 8,
                                                    right: 50,
                                                    left: 50),
                                                child: GestureDetector(
                                                  onTap: () {},
                                                  child: Center(
                                                    child: Text(
                                                      'Do Karma',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
