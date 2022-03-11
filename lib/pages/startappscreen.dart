import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
          decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/adminlogin.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 400.0, right: 20, left: 20),
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
                        onTap: () => {},
                        child: changebutton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Customer",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
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
                    onTap: () => {},
                    child: changebutton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Fitness Owner",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
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
                    onTap: () => {},
                    child: changebutton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Admin",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
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
