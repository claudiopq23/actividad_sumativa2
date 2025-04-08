import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/custom_drawer.dart';

class EnergyScreen extends StatefulWidget {
  const EnergyScreen({super.key});

  @override
  State<EnergyScreen> createState() => _EnergyScreenState();
}

class _EnergyScreenState extends State<EnergyScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Energía'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Renovable'),
            Tab(text: 'Hidroeléctrica'),
            Tab(text: 'Térmica'),
          ],
        ),
      ),
      drawer: const CustomDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Tab Energías Renovables
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Energías Renovables',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/renewable.jpg',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 200,
                        color: AppColors.primary.withOpacity(0.1),
                        child: const Icon(Icons.image, size: 50, color: AppColors.primary),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Colbún está comprometida con las energías renovables como parte esencial de su estrategia de crecimiento y diversificación de matriz. La compañía está desarrollando proyectos solares y eólicos que complementan su generación hidroeléctrica y térmica.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildProjectCard(
                    title: 'Parque Solar Ovejería',
                    location: 'Región Metropolitana',
                    capacity: '9 MW',
                    description: 'Planta fotovoltaica que entró en operación comercial en 2021.',
                    imageAsset: 'assets/images/renewable.jpg',
                  ),
                  _buildProjectCard(
                    title: 'Parque Eólico Horizonte',
                    location: 'Región de Antofagasta',
                    capacity: '778 MW',
                    description: 'Uno de los parques eólicos más grandes de Latinoamérica, actualmente en construcción.',
                    imageAsset: 'assets/images/renewable.jpg',
                    status: 'En construcción',
                  ),
                ],
              ),
            ),
          ),
          
          // Tab Hidroeléctricas
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Centrales Hidroeléctricas',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/hydro.jpg',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 200,
                        color: AppColors.primary.withOpacity(0.1),
                        child: const Icon(Icons.image, size: 50, color: AppColors.primary),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'La hidroelectricidad es el pilar de la generación renovable de Colbún. La empresa cuenta con centrales hidroeléctricas de embalse y de pasada, que aprovechan los recursos hídricos de manera sustentable.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildProjectCard(
                    title: 'Central Colbún',
                    location: 'Región del Maule',
                    capacity: '474 MW',
                    description: 'Central hidroeléctrica de embalse, una de las más grandes del país.',
                    imageAsset: 'assets/images/hydro.jpg',
                  ),
                  _buildProjectCard(
                    title: 'Central Angostura',
                    location: 'Región del Biobío',
                    capacity: '323 MW',
                    description: 'Central hidroeléctrica de embalse con modernas instalaciones y tecnología.',
                    imageAsset: 'assets/images/hydro.jpg',
                  ),
                ],
              ),
            ),
          ),
          
          // Tab Térmicas
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Centrales Térmicas',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/thermal.jpg',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 200,
                        color: AppColors.primary.withOpacity(0.1),
                        child: const Icon(Icons.image, size: 50, color: AppColors.primary),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Las centrales térmicas de Colbún proporcionan respaldo y estabilidad al sistema eléctrico, permitiendo complementar la generación renovable variable. La compañía busca operar estas centrales de manera eficiente y con el menor impacto ambiental posible.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildProjectCard(
                    title: 'Complejo Nehuenco',
                    location: 'Región de Valparaíso',
                    capacity: '873 MW',
                    description: 'Complejo termoeléctrico de ciclo combinado que opera con gas natural como combustible principal.',
                    imageAsset: 'assets/images/thermal.jpg',
                  ),
                  _buildProjectCard(
                    title: 'Central Santa María',
                    location: 'Región del Biobío',
                    capacity: '350 MW',
                    description: 'Central termoeléctrica a carbón con tecnología de última generación para control de emisiones.',
                    imageAsset: 'assets/images/thermal.jpg',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildProjectCard({
    required String title,
    required String location,
    required String capacity,
    required String description,
    required String imageAsset,
    String status = 'En operación',
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              imageAsset,
              height: 150,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 150,
                color: AppColors.primary.withOpacity(0.1),
                child: const Icon(Icons.image, size: 50, color: AppColors.primary),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.secondary,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: _getStatusColor(status),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        status,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 16, color: AppColors.primary),
                    const SizedBox(width: 4),
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.bolt, size: 16, color: AppColors.primary),
                    const SizedBox(width: 4),
                    Text(
                      'Capacidad: $capacity',
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    // Aquí podríamos navegar a una pantalla con más detalles del proyecto
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accent,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Ver más detalles'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Color _getStatusColor(String status) {
    switch (status) {
      case 'En operación':
        return Colors.green;
      case 'En construcción':
        return Colors.orange;
      case 'En desarrollo':
        return Colors.blue;
      case 'En estudio':
        return Colors.purple;
      default:
        return AppColors.primary;
    }
  }
}