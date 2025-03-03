// ignore_for_file: camel_case_types, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';

class productdetail extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  const productdetail({super.key, required this.image,required this.name,required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: NetworkImage(image),width: 300,),
        SizedBox(height: 10,),
       Padding(
         padding: const EdgeInsets.only(left: 55),
         child: Text(name,style: 
         TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black
         ),),
       ),
       SizedBox(height: 10,),
       Padding(
         padding: const EdgeInsets.only(left: 55),
         child: Text("More detail about product,that customor to know",style: 
         TextStyle(
          fontSize: 17,
          
          color: Colors.black
         ),),
       ),
       Padding(
         padding: const EdgeInsets.only(left: 54,right: 17),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('\$$price',style: 
         TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black
         ),),
         Container(
           child: Image(image: NetworkImage("https://cdn2.iconfinder.com/data/icons/generic-06/100/Artboard_10-512.png"),
           fit: BoxFit.cover,
           ),
           width: 30,
           height: 30,
         )
          ]
         ),
       )
      ],
    );
  }
}