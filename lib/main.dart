import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fgift',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.brown),
      ),
      home: Fgift(),
    );
  }
}

class Fgift extends StatefulWidget {
  const new({super.key});

  @override
  State<Fgift> createState() => _Fgiftstate();
}

class _Fgiftstate extends State<Fgift> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Fuel Cost Sharing")));
  }
}