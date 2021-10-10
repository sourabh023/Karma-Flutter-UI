import 'dart:js';

import 'package:flutter/material.dart';

class MySocialCredits extends StatefulWidget {
  MySocialCredits({Key? key}) : super(key: key);

  @override
  _MySocialCreditsState createState() => _MySocialCreditsState();
}

class _MySocialCreditsState extends State<MySocialCredits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            child: Image.asset('assets/hkLogo.png', height: 60.0, width: 60.0),
          ),
        ),
        title: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'John Doe',
                  style: TextStyle(fontSize: 15),
                )),
            Container(
              child: Row(
                children: [
                  Text(
                    '100',
                    style: TextStyle(fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, left: 2),
                    child: Text(
                      'KARMA CREDITS',
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: 
          [Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/nickyjame.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    '280',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Text(
                                      'PLUS POINTS',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 10),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    '60',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    'PLUS POINTS',
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic, fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('I DONATED SHOES TO\n UNPRIVILAGED STUDENT'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 10),
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('#nickyjam', style: TextStyle( fontSize: 10, color: Colors.orange),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('#porfa', style: TextStyle( fontSize: 10, color: Colors.orange),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('#ayvamos', style: TextStyle( fontSize: 10, color: Colors.orange),),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text('SOCIAL VOTING'),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.lightGreenAccent[400],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 5, top: 5, bottom: 5),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          "-1",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text("POINT",
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5, right: 5, top: 5, bottom: 5),
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.plus_one,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.lightGreenAccent[400],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, right: 5, top: 5, bottom: 5),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          "+2",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text("POINT",
                                            style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5, right: 5, top: 5, bottom: 5),
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Icon(
                                        Icons.plus_one,
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
