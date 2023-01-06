import 'package:flutter/material.dart';

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
      backgroundColor: Color.fromARGB(255, 122, 214, 199),
      appBar: AppBar(
        title: const Text('First Screen of My App',
            style: TextStyle(
              color: Colors.black,
            )),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                  child: const Center(child: Text('2')),
                ),
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.green,
                  child: const Center(child: Text('3')),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                  child: const Center(child: Text('2')),
                ),
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.green,
                  child: const Center(child: Text('3')),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  color: Colors.red,
                  child: const Center(child: Text('1')),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellow,
                  child: const Center(child: Text('2')),
                ),
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.green,
                  child: const Center(child: Text('3')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
