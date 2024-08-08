// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTitle extends StatelessWidget {
  Shoe shoe;
  void Function()? OnTap;
  ShoeTitle({super.key, required this.shoe, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(shoe.imagePath)),
          //description
          Text(
            shoe.description,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
          ),
          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Shoe name
                    Text(
                      shoe.name,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    //price
                    Text(
                      shoe.price,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                //plus button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: OnTap,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Icon(Icons.add, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          )
          //Button to add to chart
        ],
      ),
    );
  }
}
