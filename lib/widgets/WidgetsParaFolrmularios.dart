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
          title: const Text('Widgets de formularios'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8.0), //Margen interno
            child: Column(children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                keyboardType: TextInputType.text, //define el tipo de teclado
                decoration: const InputDecoration(
                  hintText: 'Ingrese información', //placeholder
                  labelText: 'Label 1', //texto de la etiqueta
                  icon: Icon(Icons.admin_panel_settings), //icono del input
                ),
                validator: (value) {
                  if (value == null) return 'Campo Requerido';
                  return value.length < 5 ? 'Mínimo de 5 caracteres' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              const SizedBox(height: 10), //añade una separación
            ]),),),),);}}



