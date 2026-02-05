import 'package:flutter/material.dart';
import 'package:games_two_days/screens/games_two_days_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GamesTwoDaysScreen());
  }
}
