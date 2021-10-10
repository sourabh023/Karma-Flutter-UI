import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_6/drives.dart';
import 'package:flutter_application_6/karmarewards.dart';
import 'package:flutter_application_6/newsfeed.dart';
import 'package:flutter_application_6/passbook.dart';
import 'package:flutter_application_6/socialcredits.dart';
import 'package:flutter_application_6/stories.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get onClicked => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        primary: false,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            child: Image.asset('assets/hkLogo.png', height: 50.0, width: 50.0),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child:
                  Icon(Icons.notifications_none_outlined, color: Colors.white),
            ),
          ],
        ),
      ),
      endDrawer: Container(
        width: 250,
        child: Drawer(
          child: Material(
            color: Color(0xffff7e00),
            child: ListView(
              padding: EdgeInsets.only(left: 20.0),
              children: <Widget>[
                SizedBox(height: 25.0),
                buildMenuItem(
                  text: 'Share',
                  icon: Icons.share,
                  onClicked: () => selectedItem(context, 0),
                ),
                SizedBox(height: 50.0),
                buildMenuItem(
                  text: 'Profile',
                  icon: Icons.people,
                  onClicked: () => selectedItem(context, 1),
                ),
                SizedBox(height: 10.0),
                buildMenuItem(
                  text: 'Passbook',
                  icon: Icons.people,
                  onClicked: () => selectedItem(context, 2),
                ),
                SizedBox(height: 10.0),
                buildMenuItem(
                  text: 'Karma Drive',
                  icon: Icons.drive_eta,
                  onClicked: () => selectedItem(context, 3),
                ),
                SizedBox(height: 10.0),
                buildMenuItem(
                  text: 'Notification',
                  icon: Icons.notifications_on_rounded,
                  onClicked: () => selectedItem(context, 4),
                ),
                SizedBox(height: 10.0),
                buildMenuItem(
                  text: 'Setting',
                  icon: Icons.settings,
                  onClicked: () => selectedItem(context, 5),
                ),
                SizedBox(height: 10.0),
                buildMenuItem(
                  text: 'Karma Rewards',
                  icon: Icons.settings,
                  onClicked: () => selectedItem(context, 6),
                ),
                SizedBox(height: 10.0),
                buildMenuItem(
                  text: 'Members Friends',
                  icon: Icons.mobile_friendly_sharp,
                  onClicked: () => selectedItem(context, 7),
                ),
                SizedBox(height: 10.0),
                buildMenuItem(
                  text: 'Category',
                  icon: Icons.category,
                  onClicked: () => selectedItem(context, 8),
                ),
                SizedBox(height: 10.0),
                buildMenuItem(
                  text: 'Logout',
                  icon: Icons.logout,
                  onClicked: () => selectedItem(context, 9),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.orange,
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10.0),
                          Text(
                            'Hello, Paul',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Welcom Again',
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.0),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 20.0, top: 10.0),
                          child: Container(
                            height: 40.0,
                            width: 130.0,
                            decoration: BoxDecoration(
                              color: Colors.white30,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Icon(Icons.wallet_giftcard,
                                          color: Colors.white),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          'Karma Credits',
                                          style: TextStyle(
                                              fontSize: 8.0,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          '100',
                                          style: TextStyle(
                                              fontSize: 13.0,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                MyStories(),
                NewsFeeds(),
              ],
            ),
          ),
        ],
      ),
    );
  }

// DraweCode

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    onClicked,
  }) {
    final color = Colors.white;
    return ListTile(
      leading: Container(
        child: Icon(icon, color: color),
        padding: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: Colors.white30,
          shape: BoxShape.circle,
        ),
      ),
      title: Text(text, style: TextStyle(color: color)),
      onTap: onClicked,
    );
  }
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => MyDrive(),
        ),
      );
      break;
      case 1:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => MySocialCredits(),
        ),
      );
      break;
      case 2:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => PassBook(),
        ),  
      );
      break;
      case 6:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => KarmaRewards(),
        ),  
      );
      break;
  }
}
