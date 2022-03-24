  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_shopping_list/class/product.dart';
import 'package:flutter_shopping_list/class/shoppingListItem.dart';

class ShoppingList extends StatefulWidget{
  final List<Product> products;
  ShoppingList({this.products});


  @override
  State<StatefulWidget> createState()=> ShoppingListState();


}
class ShoppingListState extends State<ShoppingList>{

  Set<Product> shoppingCart  = Set<Product>();
   void   handleCartChanged(Product product,bool inCart){
     setState(() {
       if(inCart)
       shoppingCart.remove(product);
           else
         shoppingCart.add(product);

     });
   }

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return new Scaffold(
     appBar: new AppBar(title: new Text("Shopping Cart"),),
     body:
     new ListView(
       padding: EdgeInsets.all(30.0),
       children: widget.products.map((Product product) {


         //return new Text(product.name.toString());
         return ShoppingListItem(
           product:product,
           onCartChanged:  handleCartChanged,
           inCart: shoppingCart.contains(product),
         );
       }).toList(),
     )

     ,
   );
  }

}

