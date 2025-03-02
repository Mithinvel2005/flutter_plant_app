// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app_ui/screen/detailscreen.dart';
import 'package:plant_app_ui/screen/product.dart';
import 'package:plant_app_ui/utils/colors.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              side_box(),
              bodyparts(size,context),
              
            ],
          ),
              Positioned(
                top: 88,
                left: 19,
                child: Text("Plants",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              ),
              ),
              Positioned(child: Icon(Icons.search,size: 35,color:Colors.black,),
              top: 20,
              right: 10,)
        ],
      ),
    );
  }

  Container bodyparts(Size size,BuildContext context) {
    return Container(
              width: size.width*0.8,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 100,
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailscreen(  price: "45",)));
                      },
                      child: Hero(
                        tag: "Flower1",
                        child: product(image:"https://media.istockphoto.com/id/1334790507/vector/3d-vector-floor-house-green-plant-palm-in-white-pot-isolated-on-white-illustration-icon.jpg?s=612x612&w=0&k=20&c=dGsYtSp66z31VWTzpwtlZJCDHvbfieGwDSargtfyTxY=",name: "House Shape Close", 
                        price: "45"),
                      ),
                    ),
                    Hero(
                      tag: "Flower2",
                      child: product(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlfBHWy9nHZvkNmReGJOaMoDLDntGluGpztQ&s", name: "Glass water", price: "60"))
                  ],
                ),
              ),
            );
  }

  Expanded side_box() {
    return Expanded(child: Container(color:secondarycolor,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(left: 5,top: 15),
                child:Icon(Icons.menu_rounded,size: 35,
                color: const Color.fromARGB(255, 61, 60, 56),)),
                SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: Text("Green",
                  style: TextStyle(
                    fontSize: 15,
                  ),),
                ),
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(right:14),
                  child: RotatedBox(quarterTurns: 3,
                  child: RichText(text: TextSpan(
                    children: [
                      TextSpan(
                        text: ". ",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: primarycolor
                        ),
                      ),
                      TextSpan(
                        text: "Shape class",
                        style: TextStyle(
                          color: primarycolor,
                        )
                      )
                    ]
                  )),),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: RotatedBox(
                    quarterTurns: 3,
                  child:Text(
                    "Indore plants",
                    style: TextStyle(
                    color: const Color.fromARGB(160, 0, 0, 0),
                  ),
                  ),
                  ),
                ),
                 SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: RotatedBox(
                    quarterTurns: 3,
                  child:Text(
                    "Green plants",
                    style: TextStyle(
                    color: Colors.black,
                  ),
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16,top:90,left: 4,bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                  
                      ),
                      color: primarycolor
                    ),
                    height: 60,
                    width: 70,
                    child: Icon(Icons.home,color: Colors.white,
                   size: 40,
                    ),
                  ),
                )
              ],
            ),
            )
            );
  }
}