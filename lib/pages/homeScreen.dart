import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_list/class/product.dart';
import 'package:flutter_shopping_list/class/shoppingList.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title : "Shopping Cart",
      home :ShoppingList(
          products : <Product>[
            Product(name:"apple"),
            Product(name:"orange"),
            Product(name:"potato"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"tangerine"),
            Product(name:"potatoes"),

          ]
      )
    );
  }


}
