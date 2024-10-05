import 'package:flutter/material.dart';
import 'package:storr/constant.dart';
import 'package:storr/models/product.dart';
import 'package:storr/widgets/details/detail_body.dart';

class detailScreen extends StatelessWidget {
detailScreen({super.key, required this.product, });
final Product  product ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: kPrimaryColor,
      appBar: detailsAppbar(context), 
       body: detailBody(
        product: product,
      ),
    );
  }
  AppBar detailsAppbar (BuildContext context){
    return AppBar(
      
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          padding: EdgeInsets.only(right: kDefaultPadding),
         icon: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
         ), onPressed: () { 
          Navigator.pop(context);
          },

        ),  
        title: 
           Text('رجوع',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 25
          ),
          ),
        

      
    );
  }
}