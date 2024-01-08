import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://scontent.fdac24-3.fna.fbcdn.net/v/t39.30808-6/382212359_1735581726884229_1149180611476470422_n.jpg?stp=cp6_dst-jpg&_nc_cat=104&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=Y-PYMn9WRQQAX_jAevB&_nc_ht=scontent.fdac24-3.fna&oh=00_AfAavH0g3UlpXdfJm7sCmxidkteBkwV1ObBFxYOLzl0TBA&oe=65A136AD";
    return Drawer(
        child: Container(
          color: Colors.blue,
          child: ListView(
            padding: EdgeInsets.zero,
          children: [
          DrawerHeader(
            
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Rifat Hasan"),
              decoration: BoxDecoration(color: Colors.blue),
              accountEmail: Text("rifathasab2@gmail.com"), 
            margin: EdgeInsets.zero,
             currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              
             ),
          )
           
          
          ),
          ListTile(
           leading: Icon(CupertinoIcons.home,color: Colors.white,),
           title: Text("Home",style: TextStyle(color: Colors.white),),
          ),
          ListTile(
           leading: Icon(CupertinoIcons.profile_circled,color: Colors.white,),
           title: Text("Profile",style: TextStyle(color: Colors.white),),
          ),
          ListTile(
           leading: Icon(CupertinoIcons.mail,color: Colors.white,),
           title: Text("Mail",style: TextStyle(color: Colors.white),),
          )
          
          ],
          
          ),
        ),


    );
  }
}