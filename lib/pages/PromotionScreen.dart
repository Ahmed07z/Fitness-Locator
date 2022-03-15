import 'package:flutter/material.dart';

class PromotionScreen extends StatelessWidget {
  final String name = "Fitness Locator";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: 
        Container( 
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/adminlogin.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:80.0),
                    child: Text('Here Are the Promotions for you',style: 
                    TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                      
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 30,top: 20
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: Card(
                        elevation: 10,
                        child: Image.asset("assets/images/Image1.jpg")),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 30,
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: Card(
                        elevation: 10,
                        child: Image.asset("assets/images/crick.jpg")),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 30,
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: Card(
                        elevation: 10,
                        child: Image.asset("assets/images/images 3.jpg")),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 30,
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    child: Card(
                        elevation: 10,
                        child: Image.asset("assets/images/image 4.jpg")),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
