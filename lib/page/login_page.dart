// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset("assets/image/login_page.png",fit: BoxFit.cover,),
          const SizedBox(height: 60.0,),
          const Text("Welcome",style: TextStyle(

            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
            
              decoration: InputDecoration(
                labelText: "UserName",
                hintText: "Enter User Name",
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter Password",
                
              ),
            ),
            SizedBox(height: 16.0,),
            ElevatedButton(
              
              child: Text("Login",style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),),
              onPressed: (){
                print("Logging success");
              },
            )
              ],
            ),
          )
        ],
        
      )
      
    );
  }
}