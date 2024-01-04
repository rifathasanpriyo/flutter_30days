// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_day2/page/homepage.dart';
import 'package:flutter_day2/page/login_page.dart';


void main()
{
runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      // home: homePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red
        
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
         "/":(context) => LoginPage(),
         "/home":(context) => homePage(),
          "/login":(context) => LoginPage(),

      },
    );
  }
}