import 'package:final_1/pages/create_account.dart';
import 'package:final_1/pages/login.dart';
import 'package:final_1/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:final_1/pages/scanme.dart';
import 'package:final_1/pages/history.dart';
import 'package:final_1/pages/imageAnalysis.dart';
import 'package:final_1/pages/help.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => WelcomePage(),
      '/iii': (context) => Imageanalysis(),
      '/Scanme': (context) => Scanme(),
      '/history': (context) => history(),
      '/help':(context)=>Help(),
      '/createAccount':(context)=>CreateAccount(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
