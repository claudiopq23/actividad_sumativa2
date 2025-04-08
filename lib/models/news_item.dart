class NewsItem {
  final String id;
  final String title;
  final String date;
  final String imageUrl;
  final String summary;
  final String content;

  NewsItem({
    required this.id,
    required this.title,
    required this.date,
    required this.imageUrl,
    required this.summary,
    required this.content,
  });

static List<NewsItem> getSampleNews() {
  return [
    NewsItem(
      id: '1',
      title: 'Colbún avanza en proyectos de energía renovable',
      date: '10 de marzo, 2025',
      imageUrl: 'assets/images/renewable.jpg',
      summary: 'La compañía está ampliando su portafolio de energías renovables con nuevos proyectos solares y eólicos.',
      content: 'Colbún S.A., una de las mayores empresas generadoras de electricidad en Chile, ha anunciado importantes avances en su cartera de proyectos de energía renovable...',
    ),
    NewsItem(
      id: '2',
      title: 'Nueva central hidroeléctrica en operación',
      date: '2 de marzo, 2025',
      imageUrl: 'assets/images/hydro.jpg',
      summary: 'Colbún pone en marcha una nueva central hidroeléctrica de pasada en la región del Maule.',
      content: 'Colbún S.A. ha puesto en operación comercial su nueva central hidroeléctrica de pasada en la región del Maule...',
    ),
    NewsItem(
      id: '3',
      title: 'Colbún firma importante acuerdo de suministro de energía renovable',
      date: '20 de febrero, 2025',
      imageUrl: 'assets/images/renewable2.jpg',
      summary: 'El acuerdo permitirá suministrar energía limpia a grandes empresas industriales.',
      content: 'Colbún S.A. ha firmado un importante acuerdo de suministro de energía renovable con varias empresas industriales del país...',
    ),
    NewsItem(
      id: '4',
      title: 'Colbún recibe certificación en eficiencia energética',
      date: '15 de febrero, 2025',
      imageUrl: 'assets/images/hydro2.jpg',
      summary: 'La compañía ha sido reconocida por sus prácticas en gestión energética eficiente.',
      content: 'Colbún S.A. ha recibido una importante certificación internacional en eficiencia energética...',
    ),
    NewsItem(
      id: '5',
      title: 'Programa de educación ambiental de Colbún alcanza a más de 5,000 estudiantes',
      date: '10 de febrero, 2025',
      imageUrl: 'assets/images/renewable.jpg',
      summary: 'La iniciativa busca crear conciencia sobre la importancia de las energías renovables.',
      content: 'El programa de educación ambiental desarrollado por Colbún ha logrado llegar a más de 5,000 estudiantes...',
    ),
    NewsItem(
      id: '6',
      title: 'Colbún inicia construcción de nuevo parque solar en el norte de Chile',
      date: '5 de febrero, 2025',
      imageUrl: 'assets/images/renewable.jpg',
      summary: 'El proyecto tendrá una capacidad instalada de 300 MW y ocupará una superficie de 600 hectáreas.',
      content: 'Colbún S.A. ha iniciado la construcción de un nuevo parque solar en el norte de Chile...',
    ),
  ];
}
}