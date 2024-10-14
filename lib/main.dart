import 'package:flutter/material.dart';
import 'package:grocery_app/screens/detail_screen.dart';
import 'screens/login_screen.dart';
import 'screens/product_screen.dart';


// main method is entry point of the application.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  //build method called to render the widget.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home:const LoginScreen(),
    );
  }
}


