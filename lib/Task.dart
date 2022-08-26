import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.list_outlined, color: Colors.black,),
          onPressed: () => {},

        ),
       title: Icon(Icons.notifications_none, color: Colors.black,),

        actions: [Icon(Icons.arrow_drop_down, color: Colors.black,),
          Padding(padding: EdgeInsets.only(top: 15,right: 10), child: Text("توصيل الى المنزل", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
        ],
      ),


      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height-190,
                child:ListView(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                        children: [
                          Text("نقطة",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Icon(Icons.arrow_back, color: Colors.black,),
                        ],
                      ),
                        Text("  3.8K",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 25),),
                        Padding(padding: EdgeInsets.only(left: 90), child: Icon(Icons.error_outline, color: Colors.green,),),
                        Text("الفئة الخضراء",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold, fontSize: 25),),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                          Text("------------------",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold, fontSize: 25),),
                        ],
                      ),
Row(mainAxisAlignment: MainAxisAlignment.end,
  children: [
    Text("تبقى 9 طلبات اضافية لغاية اغسطس31 \n  للترقية الى الفئة الذهبية", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
  ],
),
                    Container(
                      height: 250,
                      child:
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Imagesss(Images: "Imagess/Artboard 1.png"),
                              Imagesss(Images: "Imagess/Artboard 1.png"),
                              Imagesss(Images: "Imagess/Artboard 1.png"),
                            ],
                          )
                        ],
                      ),
                    ),
                Container(
                  height: 250,
                  child:Column(

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          limage(limages: "Imagess/photo_2022-08-26_21-45-42.jpg"),
                          limage(limages: "Imagess/photo_2022-08-26_21-45-46.jpg"),
                          limage(limages: "Imagess/photo_2022-08-26_21-45-50.jpg"),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          limage(limages: "Imagess/photo_2022-08-26_21-46-01.jpg"),
                          limage(limages: "Imagess/photo_2022-08-26_21-45-58.jpg"),
                          limage(limages: "Imagess/photo_2022-08-26_21-45-54.jpg"),
                        ],
                      ),
                    ],
                  ),
                ),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                          Padding(padding: EdgeInsets.only(left: 10), child:Icon(Icons.arrow_back_ios, color: Colors.green,size: 20,) ,),
                          Text("خصومات اسبوعية", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
                        ]
                    ),

                    Padding(padding: EdgeInsets.only(left: 150), child:Text("احصل على خصم 50% على مطاعم هذا الاسبوع", style: TextStyle(color: Colors.grey, fontSize: 15,),),),



                  ],
                ),
              )


            ],
          ),
        ],
      ),




      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin, color: Colors.black,),
              backgroundColor: Colors.white,
              label: "الحساب"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt, color: Colors.black,),
              backgroundColor: Colors.white,
              label: "الطلبات"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.delivery_dining, color: Colors.black,),
              backgroundColor: Colors.white,
              label: "المندوب"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black,),
            backgroundColor: Colors.white,
            label: "بحث",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.red,),
            backgroundColor: Colors.white,
            label: "الرئيسية",
          ),
        ],
      ),
    );
  }

  Row Imagesss ({ required String Images,})
  {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(Images),
                        fit: BoxFit.fill),

                  ),
                ),

              ],
            );
  }
  Container limage ({required String limages}
      ){
    return Container(
                height: 100,width: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(image: AssetImage(limages),fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(15),boxShadow: [
          BoxShadow(
          color: Colors.grey,
          blurRadius: 2,
          offset: Offset(1, 2)
   ),
  ]
    )
              );



  }
}
