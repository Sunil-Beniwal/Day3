import 'package:flutter/material.dart';
 
 Container roundedSquare(
   {
     double width = 150,
     double height = 150,
    required Color bgcolor,
  required String text,
  required Color txtcolor}){
   return
   Container(
     child: Center(
       child: Text(text,
       style: TextStyle(fontWeight: FontWeight.bold, color: txtcolor,),
       
          )
         ),
                width: width,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                height: height,
                decoration: BoxDecoration(
                    color: bgcolor,
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: Colors.pink, width: 2)),
              );
  }

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: double.infinity),
              
              SizedBox(
                height: 10,
              ),
             roundedSquare(
              
               bgcolor: Colors.lightBlue,
               text: "Square1",
               txtcolor: Colors.yellow
             ),
              
              SizedBox(
                height: 10,
              ),
             roundedSquare(
              
               bgcolor: Colors.green,
               text: "Square2",
               txtcolor: Colors.red),
              
              SizedBox(
                height: 10,
              ),
              roundedSquare(
              
              bgcolor: Colors.yellow,
              text: "Square3",
              txtcolor:Colors.blue),
               
               SizedBox(
                height: 10,
              ),
              roundedSquare(
               width: 200,
               height:200,
               bgcolor: Colors.lightBlue,
               text: "Square1",
               txtcolor: Colors.yellow
             ),
            ],
          ),
        ),
      ),
    ),
  );
}