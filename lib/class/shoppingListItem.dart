import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_list/class/product.dart';

class ShoppingListItem extends StatelessWidget{
  final  Product product;
  final onCartChanged;
  final bool inCart ;

  const ShoppingListItem({Key key, this.product, this.onCartChanged, this.inCart}) : super(key: key);

  Color getColor(BuildContext context){
    return inCart?Colors.black45:Theme.of(context).primaryColor;
  }
  TextStyle getTextStyle(BuildContext context){
    if(inCart)
    return TextStyle(
     decoration: TextDecoration.lineThrough,
     color:Colors.black45
    );
    else
      return TextStyle(
          color:Theme.of(context).primaryColor
      );

  }
  @override
  Widget build(BuildContext context) {
    return new ListTile(
      leading: CircleAvatar(
        backgroundColor:getColor(context),
        child: new Text(product.name[0]),
      ),
      title: new Text(product.name,style:getTextStyle(context)),
      onTap: (){
        onCartChanged(product,inCart);
      },
    );
  }



}