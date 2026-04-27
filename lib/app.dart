import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class RecipeasyApp extends StatelessWidget {
  const RecipeasyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
