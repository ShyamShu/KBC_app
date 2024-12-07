import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:playkbc/views/Loose.dart';
import 'package:playkbc/views/Profile.dart';
import 'package:playkbc/views/QuizIntro.dart';
import 'package:playkbc/views/home.dart';
import 'package:playkbc/views/login.dart';
import 'package:playkbc/views/questionView.dart';
import 'package:playkbc/service//localDB.dart';
import 'package:playkbc/views/win.dart';



void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:const FirebaseOptions(
        apiKey: "AIzaSyD8mKFr50X1qjgED41kDZ-w7Jnd-ezK0zg",
        appId: "1:287604214599:android:a318ecceb9cc5946c7da62",
        messagingSenderId: "287604214599",
        projectId: "kbcapp-417dc"
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLogIn = false;

  getLoggedInState() async{
    await LocalDB.getUserID().then((value){
      setState((){
        isLogIn = value.toString() != "null" ;
      });
    });
  }



  @override
  void initState() {
    super.initState();
    getLoggedInState();
  }
  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
      home:  isLogIn ? Home() : Login(),
      ),
    );
  }
}





