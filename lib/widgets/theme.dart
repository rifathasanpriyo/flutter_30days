import 'package:flutter/material.dart';

class MyTheme{
static ThemeData lightTheme(BuildContext context)=>ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          
        )
        
      );
      static ThemeData darkTheme(BuildContext context)=>ThemeData(
        brightness: Brightness.dark,
          
        );
        
      


}