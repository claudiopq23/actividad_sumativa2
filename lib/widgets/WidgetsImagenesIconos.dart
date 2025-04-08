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
              child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://www.umayor.cl/um/bundles/umayor/images/header-logo.png'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_home_work,
                          color: Colors.orange,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 24.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        )
                      ],
                    )
                  ])),),),);}}