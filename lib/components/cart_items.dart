import 'package:ecommerceapp/models/cart.dart';
import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItems extends StatefulWidget {
  Shoe shoe;
  CartItems({super.key, required this.shoe});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  //remove items from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemsFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey[400], borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(bottom: 10),
        child: ListTile(
          leading: Image.asset(
            widget.shoe.imagePath,
          ),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(
              onPressed: removeItemFromCart, icon: Icon(Icons.delete)),
        ));
  }
}
