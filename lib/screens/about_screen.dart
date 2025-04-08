import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/custom_drawer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nosotros'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Banner de cabecera
            Container(
              height: 200,
              color: AppColors.secondary,
              padding: const EdgeInsets.all(16.0),
              child: const Center(
                child: Text(
                  'Somos una empresa de energía con más de 35 años de experiencia',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
            // Sección de Información Corporativa
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Quiénes Somos',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Colbún S.A. es una empresa chilena dedicada a la generación y comercialización de energía eléctrica. Con una matriz energética equilibrada entre fuentes renovables y térmicas, somos una de las principales generadoras del país.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  // Visión y Misión
                  _buildSectionWithIcon(
                    icon: Icons.visibility,
                    title: 'Nuestra Visión',
                    content: 'Ser una empresa de energía reconocida por la excelencia de nuestro trabajo, protagonista de la transición energética, creando valor a largo plazo para nuestros accionistas, colaboradores, clientes y comunidades donde operamos.'
                  ),
                  
                  const SizedBox(height: 24),
                  
                  _buildSectionWithIcon(
                    icon: Icons.business,
                    title: 'Nuestra Misión',
                    content: 'Generar energía que contribuya al desarrollo de nuestros clientes y de los países donde operamos, desarrollando relaciones de largo plazo con un manejo responsable y eficiente de los recursos.'
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Valores
                  const Text(
                    'Nuestros Valores',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  _buildValueCard(
                    title: 'Integridad',
                    description: 'Actuamos con honestidad, transparencia y ética en todas nuestras operaciones.',
                    color: AppColors.primary,
                  ),
                  
                  _buildValueCard(
                    title: 'Excelencia',
                    description: 'Trabajamos con altos estándares de calidad y eficiencia.',
                    color: AppColors.accent,
                  ),
                  
                  _buildValueCard(
                    title: 'Innovación',
                    description: 'Buscamos constantemente nuevas soluciones que agreguen valor a nuestros procesos.',
                    color: AppColors.secondary,
                  ),
                  
                  _buildValueCard(
                    title: 'Sostenibilidad',
                    description: 'Nos comprometemos con el desarrollo sostenible y el respeto al medio ambiente.',
                    color: Color(0xFF009688),
                  ),
                  
                  // Cifras clave
                  const SizedBox(height: 32),
                  const Text(
                    'Cifras Clave',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  Row(
                    children: [
                      Expanded(child: _buildStatCard('3,800+ MW', 'Capacidad Instalada')),
                      Expanded(child: _buildStatCard('1,000+', 'Colaboradores')),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(child: _buildStatCard('35+', 'Años de Experiencia')),
                      Expanded(child: _buildStatCard('20+', 'Centrales de Generación')),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildSectionWithIcon({
    required IconData icon,
    required String title,
    required String content,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: 32,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                content,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  
  Widget _buildValueCard({
    required String title,
    required String description,
    required Color color,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: color.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 8,
              height: 50,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildStatCard(String value, String label) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          children: [
            Text(
              value,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}