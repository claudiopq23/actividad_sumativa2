// ignore: file_names
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
          title: const Text('Widgets de Texto'),
        ),
        body: Center(
          child: Container(
              padding: const EdgeInsets.all(8.0), //Margen interno
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Texto Usando el widget Text',
                        style: TextStyle(fontSize: 20)),
                    RichText(
                      text: const TextSpan(
                        text: 'Texto ',
                        style: TextStyle(
                            fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'usando el widget',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' RichText'),
                        ],
                      ),
                    ),
                  ])),),),);}}


