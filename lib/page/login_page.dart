// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_day2/utils/routes.dart';
class LoginPage extends StatefulWidget {
   LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username="";
  bool changeButton=false;

  final _formKey= GlobalKey<FormState>();

  moveToHome(BuildContext context)async{
    if(_formKey.currentState!.validate())
    {
                    setState(() {
                      changeButton=true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    await Navigator.pushNamed(context, MyRoutes.homeRoute);
                    {
                      setState(() {
                      changeButton=false;
                    });
                    }
    }       

  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/image/login_page.png",
              
              fit: BoxFit.cover,
              
              ),
              
               SizedBox(height: 60.0,),
               Text("Welcome $username",style: TextStyle(
          
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),),
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextFormField(
                
                  decoration: InputDecoration(
                    labelText: "UserName",
                    hintText: "Enter User Name",
                    
                  ),
                  validator: (value) {
                     if(value?.isEmpty ?? true) {
                     return "Please enter a valid username";
                     }
                     return null;
                     },

                  onChanged: (value)
                  {
                  username=value;
                  setState(() {
                    
                  });
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                    
                  ),
                  validator: (value) {
                     if(value?.isEmpty ?? true) {
                     return "Please enter a valid password";
                     }
                     else if(value!.length<6??true)
                     {
                       return "Password Minimum 6 digits";
                     }
                     return null;
                     },
                ),
                SizedBox(height: 25.0,),
                Material(
                  color: Colors.blue,
                borderRadius:changeButton?BorderRadius.circular(50): BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () =>moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds:1),
                      height: 50,
                      width: changeButton?50: 150,
                      
                      alignment: Alignment.center,
                      child: changeButton?Icon(Icons.done ,color: Colors.white,): Text("Login",style: TextStyle(   
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        ),),
                        
                    ),
                  ),
                )
                
                  ],
                ),
              )
            ],
            
          ),
        ),
      )
      
    );
  }
}