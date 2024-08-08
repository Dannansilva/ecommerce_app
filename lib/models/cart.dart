import 'dart:ffi';

import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Nike Air Max 90",
        price: "120",
        imagePath: "img/shoe1.png",
        description: "Nike Air Max 90 is a classic shoe"),
    Shoe(
        name: "Nike Air Max 95",
        price: "150",
        imagePath: "img/shoe2.png",
        description: "Nike Air Max 95 is a classic shoe"),
    Shoe(
        name: 'Nike Air Max 97',
        price: '180',
        imagePath: 'img/shoe3.png',
        description: 'Nike Air Max 97 is a classic shoe'),
  ];

  // list of items in the cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemsFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
