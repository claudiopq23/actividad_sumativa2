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
            title: const Text('Ejemplos Widgets Para LayOuts'),
          ),
          body: Stack(
            children: [
              Table(border: TableBorder.all(), children: [
                TableRow(children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: Container(
                      color: const Color.fromARGB(255, 225, 231, 188),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text('Encabezado'),
                        ),
                      ),
                    ),
                  ),
                ]),
                const TableRow(children: [
                TableCell(child: Text('Celda 1')),
                ])
              ]),
            ],
          ),));}}




