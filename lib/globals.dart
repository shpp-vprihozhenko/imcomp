import 'dart:math';
import 'package:flutter/material.dart';

final ButtonStyle bStyle = OutlinedButton.styleFrom(
  primary: Colors.white,
  backgroundColor: Colors.teal,
  shadowColor: Colors.red,
  elevation: 10,
);
const myServerBaseUrl = 'http://62.109.10.134:6118';

Cart cart = Cart();
var rng = Random();

class CartItem {
  String name='';
  int q=0, price=0, sum=0;

  @override
  String toString() {
    return 'cart item n $name q $q pr $price s $sum';
  }
}

class Customer {
  String name='';
  String tf='';

  @override
  String toString() {
    return 'Customer n $name tf $tf';
  }
}

class Cart {
  Customer customer = Customer();
  List <CartItem> lines = [];
  int q=0;
  String orderNumber='';

  @override
  String toString() {
    return 'cart cust $customer q $q lines $lines';
  }
}

showAlertPage(context, String msg) async {
  await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(msg),
        );
      }
  );
}

int countCartTotal(){
  int _tot = 0;
  for (CartItem line in cart.lines) {
    _tot += line.q * line.price;
  }
  return _tot;
}
