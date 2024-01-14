import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_day2/page/model/catalogs.dart';
import 'package:flutter_day2/widgets/drawer.dart';
import 'package:flutter_day2/widgets/item_widget.dart';
// ignore: camel_case_types
class homePage extends StatefulWidget {
   homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
void initState()
{
  super.initState();
  loadData();
}
loadData()async
{
  await Future.delayed(Duration(seconds: 3));
  var catalogJson= await rootBundle.loadString("assets/file/catalog.json");
  var decodeData= jsonDecode(catalogJson);
  var products= decodeData["products"];
  catalogModel.items= List.from(products).map<Item>((item) => Item.fromMap(item)).toList();
  setState(() {
    
  });
}
  @override
  Widget build(BuildContext context) {
     int num=30;
     
String name="Flutter";



    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App",style: TextStyle(color: Colors.black),),
         
        ),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child:(catalogModel.items!=null && catalogModel.items!.isNotEmpty)?ListView.builder(
          itemCount: catalogModel.items?.length,
           itemBuilder: (context, index) {
             return ItemsWidget(item: catalogModel.items![index],);
           },
          
          ):Center(child: CircularProgressIndicator()),
        ),
        drawer: MyDrawer(),
      );
  }
}