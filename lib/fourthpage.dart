import 'package:flutter/material.dart';

class fourthpage extends StatefulWidget {
  const fourthpage({Key? key}) : super(key: key);

  @override
  State<fourthpage> createState() => _fourthpageState();
}

class _fourthpageState extends State<fourthpage> {
  int _count = 0;
  void _incrementCount(){
    setState(() {
      _count++;
    });
  }

  void _decrementCount(){
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:ListView(
  children: [
    Stack(
      children: [
        Image.asset("Imagess/delish-211105-popeyes-chicken-sandwich-001-ab-web-1637207425.jpg"),
        Positioned(
            right: 10,
            top: 25
            ,child: Container(
          height: 30,width: 30,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6)
          ),
          child: Icon(Icons.arrow_forward, color: Colors.black,size: 20,),
        )
        ),
        Positioned(
            top: 180,
            left: 1,
            right: 1
            ,child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("برجرات", style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
        )
        )
      ],
    ), Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("جيد جدا"), Icon(Icons.tag_faces, color: Colors.black,),
        SizedBox(width: 20,),
        Text("سعر التوصيل 1,500 د.ع"),
        Icon(Icons.delivery_dining),

      ],
    ),
    SizedBox(height: 10,),
    Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("الحد الادنى للطلب : 5000 د.ع"),
        Icon(Icons.monetization_on_outlined, color: Colors.black,),
        SizedBox(width: 40,),
        Text("المنصور"),
        Icon(Icons.location_on),
      ],
    ),SizedBox(height: 10,),
    Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("وقت التوصيل المتوقع من نصف ساعة الى ساعة"),
        Icon(Icons.lock_clock),
      ],
    ),
    Column(
      children: [
        SizedBox(height: 20,),
        Padding(padding: EdgeInsets.only(left: 150), child: Text("سندويش فيليه الدجاج", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 25),),),
        SizedBox(height: 20,),

        Container(
          height: 60,width: 330,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.3)
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                 Padding(padding: EdgeInsets.only(left: 7, top: 15), child:  Icon(Icons.arrow_upward_sharp),)
                ],
              ),
              Padding(padding: EdgeInsets.only(right:7, top: 6 ),child:Column(
                children: [
                  Text("اضافات", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                  Text("اختياري", style: TextStyle(color: Colors.grey),)
                ],
              ) ,)
            ],
          ),
        ),
        SizedBox(height: 10,),
        Padding(padding: EdgeInsets.only(left: 280), child: Text("تعليمات خاصة", style: TextStyle( fontSize: 15),),),
        Container(
            height:45,width: 330,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey.withOpacity(0.3)
            ),
            child:Padding(padding: EdgeInsets.only(left: 100
            ),child:  Text("اذا كانت لديك اي ملاحظات تخص الطلب يرجى كتابتها هنا", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),)
        ),
        SizedBox(height: 20,),
        Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 30,width: 30,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30)
              ),
              child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: _incrementCount,
              ),
            ),
            Container(
              height: 40,width: 80,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(padding:EdgeInsets.only(left: 35, top: 9),child: Text("${_count}"),),
            ),
            Container(
              height: 30,width: 30,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16)
              ),
              child: FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: _decrementCount,
              ),
            )
          ],
        ),
        SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("د.ع 6500", style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
          ],
        ),
        SizedBox(height: 20,),

        Container(
          height: 40,width: 330,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(padding: EdgeInsets.only(left: 115, top: 3),child: Text("اضافة الى السلة", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),),
        ),
        SizedBox(height: 10,)
      ],
    )


  ],
)




    );
  }
}
