import 'package:flutter/material.dart';
import 'package:spin_navigation_circular_bar/home_sccreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.yellow,
      ),
      home: const HomeScreen(),
    );
  }
}
