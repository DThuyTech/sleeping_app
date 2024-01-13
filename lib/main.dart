import 'package:flutter/material.dart';
import 'package:sleeping_app/presentation/screen/breath_screen/breathing_screen.dart';
import 'package:sleeping_app/presentation/screen/home_screen/home_screen.dart';
import 'package:sleeping_app/presentation/supervise_screen/supervise_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const SuperviseScreen(),
    );
  }
}
