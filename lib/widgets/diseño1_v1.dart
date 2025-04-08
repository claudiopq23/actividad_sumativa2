import "package:flutter/material.dart";

class FirstDesignScreen extends StatelessWidget {
  const FirstDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Contenedor 1
          const Image(
              image: NetworkImage(
                  'https://www.umayor.cl/um/bundles/carreras/images/carreras/santiago/ingenieria-civil-informatica.jpg')),
          //Fin Contenedor 1
          //Contenedor 2
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              children: [
                const Column(
                  //alinea los hijos de la columna a la izquierda
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ingeniería Civil en Computación e Informática',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Adscrita a la gratuidad',
                        style: TextStyle(color: Colors.black45)),
                  ],
                ),
                Expanded(child: Container()),
                const Icon(Icons.mail, color: Color.fromRGBO(254, 128, 63, 10))
              ],
            ),
          ),
          //Fin Contenedor 2
          //Contenedor 3
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.file_download,
                        color: Color.fromRGBO(254, 128, 63, 10)),
                    Text(
                      'Malla',
                      style: TextStyle(color: Color.fromRGBO(254, 128, 63, 10)),
                    )
                  ], //Icons.discord, Icons.facebook
                ),
                Column(
                  children: [
                    Icon(Icons.facebook,
                        color: Color.fromRGBO(254, 128, 63, 10)),
                    Text(
                      'Facebook',
                      style: TextStyle(color: Color.fromRGBO(254, 128, 63, 10)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.discord,
                        color: Color.fromRGBO(254, 128, 63, 10)),
                    Text(
                      'Discord',
                      style: TextStyle(color: Color.fromRGBO(254, 128, 63, 10)),
                    )
                  ],
                ),
              ],
            ),
          ),
          //Fin Contenedor 3
          //Contenedor 4
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: const Column(
              children: [
                Text('IMPORTANTE',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  'Si eres egresada/o de EM 2022, para esta carrera se exige la rendición de la Prueba de Competencia Matemática (M2).Recuerda que la pueden rendir todos los que hayan inscrito la Prueba de Competencia Matemática 1 (M1).',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          //Fin Contenedor 4
          //Contenedor 5
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                const Text('Descripción',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                    text:
                        'Cualquiera sea la Ingeniería que elijas en la Universidad Mayor, ',
                    style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'la duración de la carrera será de un semestre menos que en la mayoría de universidades.',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const Text(
                  'Esto gracias a un plan de estudios orientado en la obtención de competencias, una malla curricular de excelencia y a un destacado cuerpo académico estrechamente vinculado al mundo empresarial, ofreciéndote un aprendizaje integral de forma más eficiente',
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )
          //Fin Contenedor 5
        ],
      ),
    );
  }
}
