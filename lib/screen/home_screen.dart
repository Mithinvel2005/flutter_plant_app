// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app_ui/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(child: Container(color:secondarycolor,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top:38,left: 8),
                  child:Icon(Icons.menu)),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text("Green",
                    style: TextStyle(
                      fontSize: 15,
                    ),),
                  ),
                  SizedBox(
                    height: 30,
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
                      color: Colors.black,
                    ),
                    ),
                    ),
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
                      color: Colors.black,
                    ),
                    ),
                    ),
                  ),
                ],
              ),))
            ],
          )
        ],
      ),
    );
  }
}