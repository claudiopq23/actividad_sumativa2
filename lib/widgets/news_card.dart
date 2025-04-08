import 'package:flutter/material.dart';
import '../constants/colors.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String date;
  final String imageUrl;
  final String summary;
  final String newsId;

  const NewsCard({
    super.key,
    required this.title,
    required this.date,
    required this.imageUrl,
    required this.summary,
    required this.newsId,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              imageUrl,
              height: 150,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 150,
                  color: AppColors.primary.withOpacity(0.2),
                  child: const Icon(
                    Icons.image_not_supported,
                    size: 50,
                    color: AppColors.primary,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.secondary,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  date,
                  style: const TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  summary,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.textPrimary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/news/detail',
                      arguments: newsId,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accent,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Leer más'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}