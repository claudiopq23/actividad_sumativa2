import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../models/news_item.dart';
import '../widgets/custom_drawer.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final newsId = ModalRoute.of(context)?.settings.arguments as String;
    final newsItem = NewsItem.getSampleNews().firstWhere(
      (item) => item.id == newsId,
      orElse: () => NewsItem(
        id: '0',
        title: 'Noticia no encontrada',
        date: '',
        imageUrl: '',
        summary: '',
        content: 'Lo sentimos, la noticia que buscas no está disponible.',
      ),
    );
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle de Noticia'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen de cabecera
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.asset(
                newsItem.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 250,
                  color: AppColors.primary.withOpacity(0.1),
                  child: const Center(
                    child: Icon(
                      Icons.image_not_supported,
                      size: 64,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
            ),
            
            // Contenido de la noticia
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Metadatos
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      newsItem.date,
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Título
                  Text(
                    newsItem.title,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  // Resumen
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.secondary.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: AppColors.secondary.withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      newsItem.summary,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondary,
                        height: 1.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  // Contenido principal
                  Text(
                    newsItem.content,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 32),
                  
                  // Botón para compartir
                  Row(
                    children: [
                      const Text(
                        'Compartir:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(width: 12),
                      IconButton(
                        icon: const Icon(Icons.facebook, color: Color(0xFF1877F2)),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.link, color: AppColors.primary),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.email, color: AppColors.primary),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  
                  const Divider(height: 40),
                  
                  // Noticias relacionadas
                  const Text(
                    'Noticias relacionadas',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  _buildRelatedNewsItem(
                    title: 'Colbún firma acuerdo para suministro de energía renovable',
                    date: '25 de febrero, 2025',
                    imageAsset: 'assets/images/renewable.jpg',
                    context: context,
                    newsId: '3',
                  ),
                  _buildRelatedNewsItem(
                    title: 'Inversiones en sostenibilidad aumentan un 20% en 2024',
                    date: '15 de febrero, 2025',
                    imageAsset: 'assets/images/hydro.jpg',
                    context: context,
                    newsId: '4',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildRelatedNewsItem({
    required String title,
    required String date,
    required String imageAsset,
    required BuildContext context,
    required String newsId,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(
            context,
            '/news/detail',
            arguments: newsId,
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imageAsset,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 80,
                  height: 80,
                  color: AppColors.primary.withOpacity(0.1),
                  child: const Icon(Icons.image, color: AppColors.primary),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    date,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Leer más',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
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