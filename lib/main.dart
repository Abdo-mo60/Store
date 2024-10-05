import 'package:flutter/material.dart';

import 'package:storr/constant.dart';
import 'package:storr/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stor',
      theme: ThemeData(
         primaryColor: kPrimaryColor,
      hintColor: kPrimaryColor,
       ),
      
      home: HomeScreen(),
    );
  } 
} 
