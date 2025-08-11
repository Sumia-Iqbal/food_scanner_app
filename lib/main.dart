import 'package:flutter/material.dart';
import 'package:food_scanner_app/widgets/main_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home:MainNav(),
      debugShowCheckedModeBanner: false,
    );
  }
}
