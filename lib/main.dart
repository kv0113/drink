
import 'package:flutter/material.dart';

import 'Myimagefile/Myimagefile_home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      
        body:Myhome(),

      ),
    );
  }
}
