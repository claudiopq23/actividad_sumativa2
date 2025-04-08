import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/news_card.dart';
import '../models/news_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final newsItems = NewsItem.getSampleNews();
    
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.png',
          height: 40,
          errorBuilder: (context, error, stackTrace) => const Text('Colbún'),
        ),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Banner principal
            Container(
              height: 200,
              color: AppColors.secondary,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Energía para el futuro de Chile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            
            // Sección Nosotros
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nosotros',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Somos una empresa chilena dedicada a la generación y comercialización de energía eléctrica con más de 35 años de trayectoria.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                    ),
                    child: const Text('Conoce más sobre nosotros'),
                  ),
                ],
              ),
            ),
            
            // Sección Energía
            Container(
              color: AppColors.secondary.withOpacity(0.1),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nuestra Energía',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Contamos con una matriz de generación diversificada, que incluye centrales hidroeléctricas, térmicas y de energías renovables.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/energy');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.accent,
                    ),
                    child: const Text('Conoce nuestras centrales'),
                  ),
                ],
              ),
            ),
            
            // Sección de noticias
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Últimas noticias',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Mostrar solo las dos primeras noticias en la página principal
                  NewsCard(
                    title: newsItems[0].title,
                    date: newsItems[0].date,
                    imageUrl: newsItems[0].imageUrl,
                    summary: newsItems[0].summary,
                    newsId: newsItems[0].id,
                  ),
                  const SizedBox(height: 16),
                  NewsCard(
                    title: newsItems[1].title,
                    date: newsItems[1].date,
                    imageUrl: newsItems[1].imageUrl,
                    summary: newsItems[1].summary,
                    newsId: newsItems[1].id,
                  ),
                  
                  const SizedBox(height: 24),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/news');
                      },
                      child: const Text(
                        'Ver todas las noticias',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
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
}