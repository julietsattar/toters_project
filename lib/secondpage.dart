import 'package:flutter/material.dart';
class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);


  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset("Imagess/highcompress_Kenix-Angus.png"),
              Positioned(
              right: 15,
              bottom: -10
              ,child:Container( height: 40,width: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [BoxShadow(
                    color: Colors.black,
                    blurRadius: 2,
                    offset: Offset(0.2, 0.2)
                  )]
                ),
                child: Padding(padding: EdgeInsets.only(left: 13, top: 4),child: Text("36 - 46 \n mins", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),),)
              ) )
            ],
          ),
          SizedBox(height: 15,),
          Column(
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Fire Fire - Al Saydiya", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

                ],
              ),
              SizedBox(height: 7,),
              Row(
                children: [
                  Text("we offer the must delicious burgers with our \n special and unique Ammerican sausces", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey))
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Positioned(
                  left: 20,
                  top: 20
                  ,child: Container(
                    height: 20,width: 100,
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child:Text("10% cashback", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
                  ) ),
                  SizedBox(width: 20,),
                  Positioned(
                      left: 20,
                      top: 20
                      ,child: Container(
                    height: 20,width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child:Padding(padding: EdgeInsets.only(left: 12),child: Text("Earn Points", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),)
                  ) )
                ],
              ),
                  SizedBox(width: 25,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("4.8", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 45),),
                          SizedBox(width: 20,),
                          Icon(Icons.star, size: 40,color: Colors.green,),
                          Icon(Icons.star, size: 40,color: Colors.green,),
                          Icon(Icons.star, size: 40,color: Colors.green,),
                          Icon(Icons.star, size: 40,color: Colors.green,),
                          Icon(Icons.star, size: 40,color: Colors.grey,),
                        ],
                      ),
                      Text("Based on 1200 rating",style: TextStyle( fontSize: 15, color: Colors.grey), )
                    ],
                  ),
              Text("______________________________________________________", style: TextStyle(color: Colors.grey.withOpacity(0.3)),),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text("Adnan", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Icon(Icons.star, size: 20,color: Colors.green,),
                  Icon(Icons.star, size: 20,color: Colors.green,),
                  Icon(Icons.star, size: 20,color: Colors.green,),
                  Icon(Icons.star, size: 20,color: Colors.green,),
                  Icon(Icons.star, size: 20,color: Colors.green,),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("الطعم رهييييب حبيته كلش والتوصيل سرريع ان شاء الله مو اخر مرة كلش ...read more ", style: TextStyle(color: Colors.grey),),

                ],
              )
             


            ],
          )


        ],
      ),
    );
  }
}
