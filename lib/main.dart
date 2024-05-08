import 'package:flutter/material.dart';
import 'package:flutter_challenges/challenges/01_fitness_store/screens/product.screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Challenges',
      home: FitnessProductScreen(),
    );
  }
}