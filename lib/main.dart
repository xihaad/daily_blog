import 'package:flutter/material.dart';
import 'package:daily_blog/screens/blog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog Page',
      theme: ThemeData(

        primarySwatch: Colors.cyan,
      ),
      home:  const Home(),
    );
  }
}

