import 'package:flutter/material.dart';
import 'package:storr/constant.dart';
import 'package:storr/models/product.dart';

class productCard extends StatelessWidget {
  const productCard({
    super.key, required this.itemIndex, required this.product, required this.press,
  });
  final int? itemIndex ; 
  final Product? product;  
  final VoidCallback press;
 
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;

    return Container(
       margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding /2,
    
       ),
       height: 190,
       
       child: InkWell(
        onTap: press,
         child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow:  [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black12
                  )
                ]
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child:Container(
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding),
            height: 160,
            width: 200,
            child: Image.asset( product!.image,
                 fit: BoxFit.cover,  
          ),
               ),
               ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                    height: 136,
                    width: size.width - 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                           horizontal: kDefaultPadding
                          ),
                          child: Text(product!.title,
                          style: TextStyle(
                            fontSize: 20,
                          ), 
                          
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 30
                          
                          ),
                          child: Text(product!.subTitle,
                          style: TextStyle(
                            fontSize: 15,
                          )
                          ),
                        ),
                        Spacer(),
                          Padding(   
                            padding: const EdgeInsets.all(kDefaultPadding),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: kDefaultPadding +3,
                                vertical: kDefaultPadding /2,
                              ),
                              decoration: BoxDecoration(
                                color: kSecondaryColor,
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Text('السعر: \$${product!.price}'),
                            ),
                          )
                      ],  
                    ),
                  )
                ),  
          ],
         ),
       ),
    );
  }
} 