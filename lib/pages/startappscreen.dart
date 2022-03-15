import 'package:f1/pages/AdminLogin.dart';
import 'package:f1/pages/HomePage.dart';
import 'package:f1/pages/Users%20signin%20pages/FitnessOwner.dart';
import 'package:f1/pages/login_page.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  bool changebutton = false;
  String UserSelected = "usertype";
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/adminlogin.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          //    Padding(
          //   padding: const EdgeInsets.only(top: 60,bottom: 0),
          //   child: Image.asset(
          //           "assets/images/hey.jpg",
          //           fit: BoxFit.fitHeight,
          //           height: 150.0,

          //         ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 140.0, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Select the User Type',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 150.0, right: 20, left: 20),
              child: Container(
                child: Material(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(changebutton ? 50 : 12),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 70,
                      width: changebutton ? 50 : 490,
                      alignment: Alignment.center,
                      child: InkWell(
                        onTap: () {
                          UserSelected = "customer";

                          Navigator?.push(
                              context,
                               MaterialPageRoute(
                                  builder: (context) =>  loginpage(
                                  )));
                        },
                        child: changebutton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Customer",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                  ),
                ),
              )),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, right: 20, left: 20),
            child: Material(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(changebutton ? 50 : 12),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 70,
                  width: changebutton ? 50 : 490,
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Navigator?.push(context,
                          MaterialPageRoute(builder: (context) => FitnessOwnerLogin()));
                      UserSelected = "owner";
                    },
                    child: changebutton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Fitness Owner",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, right: 20, left: 20),
            child: Material(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(changebutton ? 50 : 12),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 70,
                  width: changebutton ? 50 : 490,
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: ()  {
                      Navigator?.push(context,
                          MaterialPageRoute(builder: (context) => AdminLogin()));
                      UserSelected = "owner";
                    },
                    child: changebutton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Admin",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
