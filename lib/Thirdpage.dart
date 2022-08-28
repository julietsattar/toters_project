import 'dart:ffi';

import 'package:flutter/material.dart';
class Thirdpage extends StatefulWidget {
  const Thirdpage({Key? key}) : super(key: key);

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  String radiobutton = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.cancel_outlined, color: Colors.black,),
        actions: [
          Icon(Icons.share, color: Colors.black),
          SizedBox(width: 20,),
          Icon(Icons.favorite_border, color: Colors.black)
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: MediaQuery.of(context). size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage("Imagess/1WLor.jpeg"),
                fit: BoxFit.cover
              )
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Checken Madfoun Platte", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25 ),),
              Text(" jnsaicai jcwe jnedc jeico jsguwuwgu jhsncieh jie\n heiuheu uhecuhe wyguiwguwd  jenicei",  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey)),
              SizedBox(height: 10,),
              Text("IQD 13,000",  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, color: Colors.green),)
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 10,
              width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.3),
          ),
          SizedBox(height: 10,),
          Text("Choosen Portion", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18, ),),
          RadioListTile(
            title: Text("Whole Checken")
          ,value: "this is checken",
              groupValue: radiobutton,
              onChanged: (val){
              setState(() {
                radiobutton = "$val";

              });
              }
          ),
          RadioListTile(
              title: Text("Half Checken")
              ,value: "this is mindi",
              groupValue: radiobutton,
              onChanged: (val){
                setState(() {
                  radiobutton = "$val";

                });
              }
          ),
          SizedBox(height: 20,),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.withOpacity(0.3),
          ),
          SizedBox(height: 10,),
          Container(
            height: 75,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Row(
              children: [

              ],
            ),
          )

        ],
      ),
    );
  }
}
