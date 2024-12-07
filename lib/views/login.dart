import 'package:flutter/material.dart';
import 'package:playkbc/service/InternetChecker.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../service/auth.dart';
import '../service/localDB.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Checker().checkInternet();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor:  Color(0xFF784CEF),
      body: Container(

        decoration: const BoxDecoration(
          gradient : LinearGradient(colors: [
            Colors.white,
            Colors.tealAccent
          ],begin: Alignment.topLeft,end: Alignment.bottomRight ,),
        ),
        child: Center(
          child: Container(

            decoration:const  BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.white,
                  Colors.tealAccent,
                ],begin: Alignment.topLeft,end: Alignment.bottomRight ,)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/mine.png"),
                const SizedBox(height: 19,),
                const Text("Welcome To Our Quiz App" ,style:  TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                const  SizedBox(height: 10,),
                SignInButton(Buttons.google, onPressed: () async {
                  await signWithGoogle();
                }),
              ],

            ),
          ),
        ),
      ),
    );
  }
}

