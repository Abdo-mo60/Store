import 'package:flutter/material.dart';
import 'package:storr/constant.dart';
import 'package:storr/models/product.dart';
import 'package:storr/screen/detail.dart';
import 'package:storr/widgets/prodcat.dart';
// import 'package:storr/models/product.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child:
    
    Column(
      children: [
        SizedBox(
          height: 10, 
        ),
        Expanded(child: Stack(
          children: [
        Container(
          margin: EdgeInsets.only(top: 70),
          decoration: BoxDecoration(color:kBackgroundColor ,
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          ),
          
        ),
        ListView.builder(

          itemCount:  products.length,
          itemBuilder: (context , index) => productCard(
            itemIndex: index,
            product: products[index], press: () { 
               Navigator.push(
                context , MaterialPageRoute(builder: (context)=>
                detailScreen(product: products[index]),
                
                
                
                ),
               );
             },
          ),
        ),
        
          ],
        ),
        ),
      ],
    ));
  }
}

  