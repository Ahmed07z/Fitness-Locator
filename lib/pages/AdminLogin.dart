import 'dart:ui';
import 'package:f1/MyRoutes/MyRoutes.dart';
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
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();
  movetoHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homePage);
      setState(() {
        changebutton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body: SingleChildScrollView(
        
        
        child: Form(
            key: _formkey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/adminlogin.png"),
              fit: BoxFit.cover,
            ),
          ),
            child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(48.0),
                child: Column(
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
                        bottom: 0,
                        right: 20,
                      ),
                      child: Text(
                        'Admin Login',
                        style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Username',
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        )),
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return "Username cannot be empty";
                      }
                    }),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 30,
                      )),
                  validator: (String? value) {
                    if (value != null && value.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value != null && value.length < 6) {
                      return "Password Length should be greater than 6";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'forget password?',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              // SizedBox(
              //   height: 25,
              // ),
              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.all(Radius.circular(40)),
              //   ),
              //   child: Padding(
              //     padding:
              //         const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              //     child: Text(
              //       'Sign in',
              //       style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // )
                 SizedBox(
                      height: 20.0,
                    ),
                    Material(
                      color: Colors.white70,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 50 : 12),
                      child: InkWell(
                        onTap: () => movetoHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: changebutton ? 50 : 190,
                          alignment: Alignment.center,
                          child: changebutton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                          // BoxShape.circle : BoxShape.rectangle,
                        ),
                      ),
                    ),
            ],
          ),
          ),
        )),
    );
  }
}
