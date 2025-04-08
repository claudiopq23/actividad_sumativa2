import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //Constructor
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplos Widgets Básicos',
      home: Scaffold(
        //Widgets Scafold
        appBar: AppBar(
          //Widgets Appbar
          title: const Text('Ejemplos Widgets Básicos'),
        ),
        body: Center(
          child: Container(
              padding: const EdgeInsets.all(8.0), //Margen interno
              color: const Color.fromARGB(255, 245, 246, 236), //color de fondo
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                      //Widgets Row
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Texto Horizonatal 1',
                            style: TextStyle(fontSize: 20)),
                        Text('Texto Horizonatal 2',
                            style: TextStyle(fontSize: 20))
                      ]),
                  Text('Elemento columna')
                ],
              )),
        ),
      ),
    );
  }
}