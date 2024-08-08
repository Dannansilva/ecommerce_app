// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:ecommerceapp/models/cart.dart';
import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_items.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Heading
                  Text(
                    "My cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Expanded(
                    child: ListView.builder(
                      itemCount: value.getUserCart().length,
                      itemBuilder: (context, index) {
                        //get individual shoe
                        Shoe individualShoe = value.getUserCart()[index];
                        //return the cart item
                        return CartItems(
                          shoe: individualShoe,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ));
  }
}
