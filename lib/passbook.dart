import 'dart:html';

import 'package:flutter/material.dart';

class PassBook extends StatefulWidget {
  PassBook({Key? key}) : super(key: key);

  @override
  _PassBookState createState() => _PassBookState();
}

class _PassBookState extends State<PassBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: Text(
          "Karma Passbook",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.orange,
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child:
                      Image.asset('assets/hkLogo.png', height: 50.0, width: 50.0),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(
                  'Paul',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10.0),
              Column(
                children: [
                  Container(
                    height: 50.0,
                    width: 170.0,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, left: 0),
                                child: Icon(Icons.wallet_giftcard,
                                    size: 30, color: Colors.white),
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    'Karma Credits',
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white),
                                  ),
                                  Text(
                                    '100',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Container(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 35, right: 35, top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                child: Text("All",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 10)),
                                style: ButtonStyle(
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.only(
                                            left: 50.0,
                                            right: 50.0,
                                            top: 15.0,
                                            bottom: 15.0)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.black),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side:
                                                BorderSide(color: Colors.green)))),
                                onPressed: () => null),
                            TextButton(
                                child: Text("Earn",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 10)),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.lightGreenAccent[400]),
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.only(
                                            left: 50.0,
                                            right: 50.0,
                                            top: 15.0,
                                            bottom: 15.0)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            side: BorderSide(color: Colors.green)))),
                                onPressed: () => null),
                            TextButton(
                                child: Text("Used",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 10)),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.lightGreenAccent[400]),
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.only(
                                            left: 50.0,
                                            right: 50.0,
                                            top: 15.0,
                                            bottom: 15.0)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: BorderSide(color: Colors.green)))),
                                onPressed: () => null),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Selects the Dates:",
                            style: TextStyle(color: Colors.lightGreenAccent[400]),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    "From",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(width: 15),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          constraints: BoxConstraints(
                                              maxWidth: 120.0, minHeight: 35.0),
                                          margin: EdgeInsets.only(top: 1),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              side:
                                                  BorderSide(color: Colors.green),
                                            ),
                                            onPressed: () {},
                                            child: Padding(
                                              padding: EdgeInsets.all(0),
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: <Widget>[
                                                    Text(
                                                      '01/01/2025',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .calendar_today_rounded,
                                                      color: Colors.black,
                                                      size: 20,
                                                    )
                                                  ],
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
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    "To",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(width: 15),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          constraints: BoxConstraints(
                                              maxWidth: 120.0, minHeight: 35.0),
                                          margin: EdgeInsets.only(top: 1),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.white,
                                              side:
                                                  BorderSide(color: Colors.green),
                                            ),
                                            onPressed: () {},
                                            child: Padding(
                                              padding: EdgeInsets.all(0),
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: <Widget>[
                                                    Text(
                                                      '01/01/2025',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .calendar_today_rounded,
                                                      color: Colors.black,
                                                      size: 20,
                                                    )
                                                  ],
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
                          ],
                        ),
                        Container(child: Column(
                          children: [
                            SizedBox(height: 10.0),
                          ],
                        )),
                        Divider(
                          color: Colors.grey,
                          height: 20,
                          thickness: 0.2,
                        ),
                        Expanded(
                          child: ListView(
                            children: List.generate(
                              100,
                              (index) => Container(
                                child: Row(
                                  children: [
                                    Icon(Icons.circle,
                                        size: 50,
                                        color: Colors.lightGreenAccent),
                                    SizedBox(width: 15),
                                    Container(
                                      child: Column(
                                        children: [
                                          Text('XYZ Credits',
                                              textAlign: TextAlign.left),
                                          Text(
                                            '12:00PM, 01/01/2019',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors
                                                    .lightGreenAccent[400]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
      
                        // Container(
                        //   padding: EdgeInsets.all(20),
                        //   width: MediaQuery.of(context).size.width,
                        //   height: MediaQuery.of(context).size.height,
                        //   color: Colors.pink,
                        //   child: Column(
                        //     children: [
                        //       Text(
                        //         "Sandy Bhai",
                        //         style:
                        //             TextStyle(color: Colors.white, fontSize: 20),
                        //       ),
                        //       SizedBox(
                        //         height: 20,
                        //       ),
                        //       Expanded(
                        //         child: ListView(
                        //           children: List.generate(
                        //               10,
                        //               (index) => Container(
                        //                     margin: EdgeInsets.only(top: 10),
                        //                     width: 100,
                        //                     height: 200,
                        //                     color: Colors.green,
                        //                     child: Center(
                        //                       child: Text("$index",
                        //                           style: TextStyle(fontSize: 25)),
                        //                     ),
                        //                   )),
                        //         ),
                        //       )
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
