import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_6/authentication.dart';
import 'package:flutter_application_6/karmarewards.dart';
import 'package:flutter_application_6/passbook.dart';
import 'package:flutter_application_6/socialcredits.dart';
import 'package:provider/provider.dart';
import 'drives.dart';
import 'homepage.dart';
import 'login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Karma',
        theme:
            ThemeData(primarySwatch: Colors.orange, fontFamily: 'Montserrat'),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return HomePage();
    }
    return LoginPage();
  }

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffff7e00),
      backgroundColor: Colors.orange,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/logo.jpeg', height: 120.0, width: 120.0),
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
                      // fontWeight: FontWeight.w900,
                      fontFamily: 'Montserrat',
                      fontSize: 40.0),
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                "UNITING POWER",
                style: TextStyle(
                    letterSpacing: 4.0,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 10.0),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => loginPage()),
      //     );
      //   },
      //   icon: Icon(Icons.refresh),
      //   label: Text('log in'),
      // ),
    );
  }
}
