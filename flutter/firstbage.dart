import 'package:farma_tech/loginPage.dart';
import 'package:farma_tech/registerPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: FirstScreen(),

  debugShowCheckedModeBanner: false,
    );
  }
}
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);
 @override
  State<FirstScreen> createState() => _FirstScreenState();
}
class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
            child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 200,

import 'package:farma_tech/loginPage.dart';
import 'package:farma_tech/registerPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
            child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                    ),
                    Icon(
                      Icons.medical_services,
                      size: 200,
                      color: Colors.red,
                    ),
                    Text("Pharma_Tech", style: TextStyle(fontSize: 35,
                        fontWeight: FontWeight.bold,
       color: Colors.blue),),
                    Container(margin: EdgeInsets.all(15),
                      width: double.infinity,
                      height: 50,
                      decoration: 
 BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: MaterialButton(color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              }));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                             
  Container(
                      margin: EdgeInsets.all(15),
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: MaterialButton(color: Colors.blue,
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)
                                              {
                                return RegisterPage();
                              }));
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
   
                ),
                    )
                  ],
                ))));
  }
}                  
