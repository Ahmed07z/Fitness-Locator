import 'dart:ui';

import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  AdminLogin({Key? key}) : super(key: key);

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

const kTextFieldDecoration = InputDecoration(
    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
    contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
    filled: true,
    fillColor: Colors.white30,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide.none));

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/adminlogin.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 58.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Fitness Locator ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                        
                            fontSize: 35,
                            color: Colors.white),
                      ),
                      //  Container(
                      //    child: Image(image:
                      //    AssetImage( "assets/images/hey.jpg"),
                      //    height: 35,),
                      //  )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 90,
                      bottom: 30,
                      right: 20,
                    ),
                    child: Text(
                      'Admin Login',
                      style: TextStyle(fontSize: 28, color: Colors.white,fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Username',
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        )
                      ),
                    ),
                  ),
                     Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 30,
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'forget password?',
                      style: TextStyle(
                        color: Colors.white,fontSize: 18
                      ),
                      
                    ),
                  ),
                  SizedBox(height: 25,
                  ),
                  Container(
                    decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(40)),

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
                      child: Text('Sign in',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  )
                
              
            ],
          ),
        ),
      )),
    );
  }
}
