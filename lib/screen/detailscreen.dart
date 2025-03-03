

// ignore_for_file: unnecessary_import, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:plant_app_ui/utils/colors.dart';

class Detailscreen extends StatelessWidget {
  final String price;
   final String image;
    final String name;
  const Detailscreen({super.key, required this.price,required this.name,required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Container(

       
        child: Stack(
          
          children: [
          Column(
            children: [
              bootom_parts(context),
            ],
          ),
            Positioned(
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(165)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top,
                          right: 16,
                          left: 10,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                          
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(Icons.arrow_back, size: 30),
                              ),
                              SizedBox(width: 220,),
                              RotatedBox(quarterTurns: 1,
                                child: Container(
                                  child: Image(
                                    image: NetworkImage(
                                        "https://static.vecteezy.com/system/resources/previews/047/445/227/non_2x/adjustment-button-icon-isolated-on-transparent-background-free-png.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  width: 30,
                                    height: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
             Padding(
              padding: EdgeInsets.only(left: 18, top: 79),
              child: Text(
                name,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.01,
                  fontSize: 30,
                ),
              ),
            ),
              
            
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 42, top: 130),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(image)),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(150))
                    ),
                    height: 400,
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 210),
                    child: Container(
                      height: 22,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // Corrected variable name
                        color: primarycolor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 235),
                    child: Container(
                      height: 10,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.pink[100],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 250),
                    child: Container(
                      height: 10,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.pink[100],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 265),
                    child: Container(
                      height: 10,
                      width: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.pink[100],
                      ),
                    ),
                  ),
             
                ],
              ),
            ),
            Positioned(
              top: 210,
              right: 250,
              child: Text(price,style: 
              TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),)
              ),
              Positioned(
                top:85,
                right:16,
                child: Icon(Icons.favorite_border,size:32,
                color: primarycolor,)
                ),
                Positioned(
                  top: 280,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40)),
                    color: primarycolor
                    ),
                    height: 50,
                    width: 50,
                    child: Icon(Icons.add_circle,color: secondarycolor,size: 35,),
                  ))
          ],
        ),
      ),
    );
  }

  Positioned bootom_parts(BuildContext context) {
    return Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                 width: MediaQuery.of(context).size.width,
                color: primarycolor,
                child: Padding(padding: EdgeInsets.only(top: 550,left:15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      
                      children: [
                          SizedBox(
                            height: 30,
                            ),
                        Text("Height",
                        style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),),
                      SizedBox(height: 4,),
                      Text("40cm - 50cm",
                        style: TextStyle(
                        fontSize: 14,
                        color: Colors.white),),
                      ],
                    ),
                    
                   Column(
                      
                      children: [
                          SizedBox(
                            height: 30,
                            ),
                        Text("Pot",
                        style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),),
                      SizedBox(height: 4,),
                      Text("self watering\n           pot",
                        style: TextStyle(
                        fontSize: 14,
                        color: Colors.white),),
                      ],
                    ),
                 
                     Padding(
                       padding: const EdgeInsets.only(right:15),
                       child: Column(
                        
                        children: [
                            SizedBox(
                              height: 30,
                              ),
                          Text("Temperature",
                          style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),),
                        SizedBox(height: 4,),
                        Text("18C - 25C",
                          style: TextStyle(
                          fontSize: 14,
                          color: Colors.white),),
                        ],
                                             ),
                     ),
                    
                  ],
                ),
                ),
              ));
  }
}