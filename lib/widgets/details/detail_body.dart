import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:storr/constant.dart';
import 'package:storr/models/product.dart';
import 'package:storr/widgets/details/point.dart';
import 'package:storr/widgets/details/prodact_image.dart';

class detailBody extends StatelessWidget {
detailBody({super.key, required this.product});
final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
           width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5),
           
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: prodactImage(size: size, image: product.image
                  ,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      point(fillColor: kTextLightColor,
                      isSelected: true,
                      ),
                       point(fillColor:Colors.blue,
                      isSelected: false,
                      ),
                       point(fillColor: Colors.red,
                      isSelected: false,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding/2
                  ),
                  child: Text(product.title,
                  style: TextStyle(
                    fontSize: 25
                  ),
                  ),
                ),
                
                 Text(
                'السعر: \$${product.price}',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
             SizedBox(
             height: kDefaultPadding,)
              

              ],
            ),
          
        ),
        
         Container(
          
        
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 1.5,
            vertical: kDefaultPadding / 2,
          ),
          child: Text(
          
            product.description,
            style: TextStyle(color: Colors.white, fontSize: 18
          
            ),
          ),
        ),
      ],
    );
  }
}



