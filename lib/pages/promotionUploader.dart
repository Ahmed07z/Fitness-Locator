import 'package:flutter/material.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';

class PromotionUploader extends StatefulWidget {
  PromotionUploader({Key? key}) : super(key: key);

  @override
  State<PromotionUploader> createState() => _PromotionUploaderState();
}

class _PromotionUploaderState extends State<PromotionUploader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: Container(
         height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/adminlogin.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          
          child: Column(
            children:[
              Text('Upload Promotion',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 10,
                fontSize: 30
              ),),
              SizedBox(
                height: 100,
                
              ),
              ElevatedButton(onPressed: ()=>{}, 
              child: Text('Select Image')),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(onPressed: () => {},
             child: Text('Upload Image'))
            ]
          ),
        ),
      ),
    );
  }
}
