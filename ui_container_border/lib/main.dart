import 'package:flutter/material.dart';
import 'package:ui_container_border/custom_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Center(
          child: Row(
            children: const [
              CustomAnimContainer(levelText: 'Beginner', months: '0-6'),
              SizedBox(
                width: 15,
              ),
              CustomAnimContainer(levelText: 'Intermediate', months: '6-18'),
              SizedBox(
                width: 15,
              ),
              CustomAnimContainer(levelText: 'Advanced', months: '18+')
            ],
          ),
        ),
      ),
    );
    // );
  }
}
