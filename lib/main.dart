// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_day2/page/homepage.dart';
import 'package:flutter_day2/page/login_page.dart';
import 'package:flutter_day2/utils/routes.dart';
import 'package:flutter_day2/widgets/theme.dart';


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
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        // "/":(context) => LoginPage(),
         MyRoutes.homeRoute:(context) => homePage(),
          MyRoutes.loginRoute:(context) => LoginPage(),

      },
    );
  }
}