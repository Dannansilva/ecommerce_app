// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTitle extends StatelessWidget {
  Shoe shoe;
  ShoeTitle({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          //shoe pic
          //description
          //price + details
          //Button to add to chart
        ],
      ),
    );
  }
}
