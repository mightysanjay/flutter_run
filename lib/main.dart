import 'package:flutter/material.dart';
import 'maze_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maze runner',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: MazePage(),
    );
  }
}
