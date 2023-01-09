import 'package:flutter/material.dart';
import 'package:homework_90123/widgets/custom_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CustomContainer(
            title: 'Current Weight',
            icon: Icon(Icons.calculate_outlined),
            sizedBox: SizedBox(
              width: 85,
            ),
            subtitle: '--- kgs'),
        CustomContainer(
            title: 'Target Weight',
            icon: Icon(Icons.calculate_outlined),
            sizedBox: SizedBox(
              width: 85,
            ),
            subtitle: '--- kgs'),
        CustomContainer(
            title: 'Height',
            icon: Icon(Icons.height_outlined),
            sizedBox: SizedBox(
              width: 130,
            ),
            subtitle: '--- cms'),
      ],
    ));
  }
}
