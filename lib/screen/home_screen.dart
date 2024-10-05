import 'package:flutter/material.dart';
import 'package:storr/constant.dart';
import 'package:storr/widgets/HomeBody.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: kPrimaryColor,
       appBar: homeAppbar(),
       body: HomeBody(),

     
    );
  }
  AppBar homeAppbar (){
return AppBar(
      
        
        backgroundColor: kPrimaryColor,
        elevation: 0,
        title:
          
               Center(
                 child: Text('مرحبا بكم بمتجر الالكترونيات' , 
                           
                             style: TextStyle(color: Colors.white,
                         fontSize: 25
                        ),
                        ),
               ),
              
           
        
       );
  }
}