import 'package:flutter/material.dart';
import 'package:flutter_application_6/drives.dart';
import 'package:flutter_application_6/passbook.dart';
import 'package:flutter_application_6/socialcredits.dart';

class KarmaRewards extends StatefulWidget {
  KarmaRewards({Key? key}) : super(key: key);

  @override
  _KarmaRewardsState createState() => _KarmaRewardsState();
}

class _KarmaRewardsState extends State<KarmaRewards> {
  get onClicked => null;
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
                "Karma Rewards",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white30,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.location_pin,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
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
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            image: DecorationImage(
              image: AssetImage('assets/Darell.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              color: Colors.black54,
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Darell Tickets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'There are many variations of passages of Lorem \n Ipsum available, but the majority have suffered alteration in.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    height: 40.0,
                    width: 150,
                    child: Material(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.lightGreenAccent[700],
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Reddem Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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
    );
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
}
