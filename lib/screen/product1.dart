// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app_ui/screen/detailscreen.dart';

class Detailscreen1 extends StatelessWidget {
  const Detailscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
       tag: "flower1",
      child: const Detailscreen(image:  "https://media.istockphoto.com/id/1334790507/vector/3d-vector-floor-house-green-plant-palm-in-white-pot-isolated-on-white-illustration-icon.jpg?s=612x612&w=0&k=20&c=dGsYtSp66z31VWTzpwtlZJCDHvbfieGwDSargtfyTxY=",
      name: " House Shape \n Closeplant",
      price: "\$45",),
    );
  }
}
class Detailscreen2 extends StatelessWidget {
  const Detailscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag:"flower2",
      child: const Detailscreen(image:   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlfBHWy9nHZvkNmReGJOaMoDLDntGluGpztQ&s",
      name: "Glass water",
      price: "\$60",),
    );
  }
}