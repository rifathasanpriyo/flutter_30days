import 'package:flutter/material.dart';
import 'package:flutter_day2/widgets/drawer.dart';
// ignore: camel_case_types
class homePage extends StatelessWidget {
   homePage({super.key});

  @override
  Widget build(BuildContext context) {
     int num=30;
String name="Flutter";
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App",style: TextStyle(color: Colors.black),),
         
        ),
        body: Center(
          child: Container(
            child: Text("Hello $name.This $num challange."),
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}