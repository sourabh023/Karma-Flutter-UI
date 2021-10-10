import 'package:flutter/material.dart';

class MyStories extends StatelessWidget {
  const MyStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.orange,
      child: Container(
        margin: EdgeInsets.only(top:30, bottom: 10),
        // padding: EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 10.0,
            children: <Widget>[
              Container(
                height: 200,
                width: 130,
                decoration: BoxDecoration(
                  // color: Colors.white30,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      height: 173,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white30,
                      ),
                      child: GestureDetector(
                        onTap: () => print("Other Stroy"),
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70, left: 35.0),
                        child: Text(
                          "Add Story",
                          style: TextStyle(fontSize: 15.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 45.0,
                      child: ClipRRect(
                        child: IconButton(
                          onPressed: () => {},
                          icon: Icon(Icons.add_circle_outline_rounded),
                          iconSize: 40.0,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 173,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.pink,
                      ),
                      child: GestureDetector(
                        onTap: () => print("Other Stroy"),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/Jay.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 30.0,
                      child: ClipRRect(
                        child: CircleAvatar(
                          radius: 25,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/Jay.jpg',
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 173,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.pink,
                      ),
                      child: GestureDetector(
                        onTap: () => print("Other Stroy"),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/Darell.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 30.0,
                      child: ClipRRect(
                        child: CircleAvatar(
                          radius: 25,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/Darell.jpg',
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 173,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.pink,
                      ),
                      child: GestureDetector(
                        onTap: () => print("Other Stroy"),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/Arcangel.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 30.0,
                      child: ClipRRect(
                        child: CircleAvatar(
                          radius: 25,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/Arcangel.jpg',
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 173,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.pink,
                      ),
                      child: GestureDetector(
                        onTap: () => print("Other Stroy"),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/nickyjame.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 35.0,
                      child: ClipRRect(
                        child: CircleAvatar(
                          radius: 25,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/nickyjame.jpg',
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 173,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.pink,
                      ),
                      child: GestureDetector(
                        onTap: () => print("Other Stroy"),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/Nio.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 30.0,
                      child: ClipRRect(
                        child: CircleAvatar(
                          radius: 25,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/Nio.jpg',
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 173,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.pink,
                      ),
                      child: GestureDetector(
                        onTap: () => print("Other Stroy"),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/Ozuna.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 30.0,
                      child: ClipRRect(
                        child: CircleAvatar(
                          radius: 25,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/Ozuna.jpg',
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 173,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.pink,
                      ),
                      child: GestureDetector(
                        onTap: () => print("Other Stroy"),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/Lenny.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 30.0,
                      child: ClipRRect(
                        child: CircleAvatar(
                          radius: 25,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/Lenny.jpg',
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 173,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.pink,
                      ),
                      child: GestureDetector(
                        onTap: () => print("Other Stroy"),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/Myketower.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 30.0,
                      child: ClipRRect(
                        child: CircleAvatar(
                          radius: 25,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/Myketower.jpg',
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 173,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.pink,
                      ),
                      child: GestureDetector(
                        onTap: () => print("Other Stroy"),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/sech.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8.0,
                      left: 30.0,
                      child: ClipRRect(
                        child: CircleAvatar(
                          radius: 25,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/sech.jpg',
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
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
      ),
    );
  }
}
