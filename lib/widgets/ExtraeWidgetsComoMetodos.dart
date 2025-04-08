import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Diseño en flutter'),
        ),
        body: _centerMethod(),
      ),
    );
  }

  Center _centerMethod() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Texto Ejemplo 1',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Texto Ejemplo 2',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}




