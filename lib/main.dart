import 'package:ball_shuffling_project/ball-shuffling-project.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ball Shuffling Project",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BallShuffling(),
    );
  }
}
