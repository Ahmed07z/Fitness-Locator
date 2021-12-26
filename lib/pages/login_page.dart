import 'package:f1/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  
  Widget build(BuildContext context) {
    return Material(
      
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/hey.png",
            fit: BoxFit.cover,
          ),
          Text(
            "Welcome ${name}",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username:",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    }),
                TextFormField(
                  obscureText: true, //Hide Password
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password:",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Material(
                  color: Colors.deepPurple,
                   borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 8),


                child:InkWell(
                  onTap: () async {
                    setState(() {
                      changebutton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));

                   await Navigator.pushNamed(context, MyRoutes.homePage);
                    setState(() {
                      changebutton = false;
                    });

                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: changebutton ? 50 : 160,
                    alignment: Alignment.center,
                    child: changebutton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                
                        // BoxShape.circle : BoxShape.rectangle,
                       
                  ),
                ),
                ),
                // ElevatedButton(
                //   child: Text("Login"),
                //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homePage);
                //   },
                // ),
              ],
            ),
          )
        ],
      ),

      // child: Center(
      //   child: Text(
      //     "Login Page",
      //     style: TextStyle(
      //       fontSize: 40,
      //       color: Colors.blue,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
    );
  }
}
