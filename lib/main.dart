import 'package:flutter/material.dart';
import 'package:snicil/pages/detail_pages.dart';
import 'package:snicil/pages/home_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Snicil",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/details': (context) => DetailPage(),
      },
    );
  }
}
