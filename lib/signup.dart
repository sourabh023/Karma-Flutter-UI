import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/homepage.dart';
import 'login.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  bool _obscureText = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 190,
              decoration: BoxDecoration(
                color: Color(0xffff7e00),
              ),
              child: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/logo.jpeg',
                          height: 80.0, width: 80.0),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.white,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Text(
                          "KARMA",
                          style: TextStyle(
                              letterSpacing: 8.0,
                              // decoration: TextDecoration.underline,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "UNITING POWER",
                        style: TextStyle(
                            letterSpacing: 4.0,
                            color: Colors.white,
                            fontSize: 7.0),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "REGISTER",
                        style: TextStyle(
                            letterSpacing: 4.0,
                            color: Colors.white,
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 40.0, right: 40.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey[400],
                    hintText: 'Name',
                    contentPadding: EdgeInsets.only(left: 30.0),
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey[400],
                    hintText: 'Phone Number',
                    contentPadding: EdgeInsets.only(left: 30.0),
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() => _obscureText = !_obscureText);
                      },
                      child: Icon(_obscureText
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey[400],
                    hintText: 'Password',
                    contentPadding: EdgeInsets.only(left: 30.0),
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                // Container(
                //   alignment: Alignment(1.0, 0.0),
                //   padding: EdgeInsets.only(top: 15.0, left: 20.0),
                //   child: InkWell(
                //     child: Text(
                //       'forgot password?',
                //       style: TextStyle(
                //         color: Color(0xffff7e00),
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(height: 70.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.lightGreenAccent[700],
                    elevation: 7.0,
                    child: GestureDetector(
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => HomePage()),
                      //   );
                      // },
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.black,
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
          SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Already a member?',
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    'Click Here',
                    style: TextStyle(
                      color: Color(0xffff7e00),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height - 60);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);

    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 70);
    path.lineTo(
      size.width,
      0.0,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
