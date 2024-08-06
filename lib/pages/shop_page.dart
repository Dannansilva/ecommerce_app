// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:ecommerceapp/components/shoe_title.dart';
import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Colors.grey[500],
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.white),
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'everyone flies.. some fly longer than others',
            style: TextStyle(
              color: Colors.grey[600],
            ),
          ),
        ),
        //hot pick
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                'View All',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // create a shoe
              Shoe shoe = Shoe(
                  name: 'Air Jordan',
                  price: '240',
                  description: 'cool shoe',
                  imagePath: 'img/shoe1.png');
              return ShoeTitle(shoe: shoe);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
          child: Divider(color: Colors.white),
        ),
      ],
    );
  }
}
