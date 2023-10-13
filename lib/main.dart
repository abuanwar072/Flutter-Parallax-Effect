import 'package:flutter/material.dart';
import 'package:parallax_slide_animation/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'SF Pro Display'),
      title: 'Buy Tickets',
      home: const HomePage(),
    );
  }
}
