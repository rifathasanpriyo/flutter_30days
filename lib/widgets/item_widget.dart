import 'package:flutter/material.dart';
import 'package:flutter_day2/page/model/catalogs.dart';
class ItemsWidget extends StatelessWidget {
  final Item item;

  const ItemsWidget({super.key, required this.item}):assert(item!=null);
  

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("Preessed");
        },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}",style: TextStyle(
            color: Colors.red,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),),
      
      ),
    );
  }
}