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
          child:(catalogModel.items!=null && catalogModel.items!.isNotEmpty)?
         GridView.builder(gridDelegate: 
         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
         mainAxisSpacing: 16,
         crossAxisSpacing: 16,
         ),
          itemBuilder: (context,index)
          {
            final item=catalogModel.items![index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              
              child: GridTile(
                header: Container(
                  padding: EdgeInsets.all(5),
                  child: Text(item.name,style: TextStyle(color: Colors.white),),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  
                  ),
                child: Image.network(item.image),
                footer: Container(
                  padding: EdgeInsets.all(5),
                  child: Text(item.price.toString(),style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    ),
                    ),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                  ),
                  
                  ),
                )
                );
          }
          ,itemCount:catalogModel.items?.length ,
          )
         :Center(child: CircularProgressIndicator()),
        ),
        drawer: MyDrawer(),
      );
  }
}