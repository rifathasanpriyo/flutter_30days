import 'package:flutter/material.dart';
import 'package:flutter_day2/page/model/catalogs.dart';
import 'package:flutter_day2/widgets/drawer.dart';
import 'package:flutter_day2/widgets/item_widget.dart';
// ignore: camel_case_types
class homePage extends StatelessWidget {
   homePage({super.key});

  @override
  Widget build(BuildContext context) {
     int num=30;
     final dummyList=List.generate(20, (index) => catalogModel.items[0]);
String name="Flutter";
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App",style: TextStyle(color: Colors.black),),
         
        ),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
          itemCount: dummyList.length,
           itemBuilder: (context, index) {
             return ItemsWidget(item: dummyList[index],);
           },
          
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}