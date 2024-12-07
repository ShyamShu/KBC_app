import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

class Checker{

   bool isValidInternet = false;

   checkInternet() async{
      isValidInternet =await InternetConnectionChecker().hasConnection;
      final msg = isValidInternet ? "Successfully Connected" : " You Lost the Internet Connection ";

      showSimpleNotification(Text("$msg"));

   }

}