import 'package:flutter/material.dart';
// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
     int num=30;
String name="Flutter";
    return Scaffold(
        appBar: AppBar(
          title: const Text("Catalog"),
        ),
        body: Center(
          child: Container(
            child: Text("Hello $name.This my $num challange."),
          ),
        ),
        drawer: const Drawer(),
      );
  }
}