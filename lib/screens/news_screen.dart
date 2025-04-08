import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/news_card.dart';
import '../models/news_item.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  int _currentPage = 0;
  final int _itemsPerPage = 5; // Mostrar 3 noticias por página
  late List<NewsItem> _allNewsItems;
  late List<List<NewsItem>> _paginatedNewsItems;

  @override
  void initState() {
    super.initState();
    _allNewsItems = NewsItem.getSampleNews();
    _paginateNewsItems();
  }

  void _paginateNewsItems() {
    _paginatedNewsItems = [];
    for (int i = 0; i < _allNewsItems.length; i += _itemsPerPage) {
      final end = (i + _itemsPerPage < _allNewsItems.length) 
          ? i + _itemsPerPage 
          : _allNewsItems.length;
      _paginatedNewsItems.add(_allNewsItems.sublist(i, end));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sala de Prensa'),
      ),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Noticias y Comunicados',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Mantente al día con las últimas novedades de Colbún',
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textSecondary,
                ),
              ),
              const SizedBox(height: 24),
              
              // Filtros de noticias
              Container(
                decoration: BoxDecoration(
                  color: AppColors.secondary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Filtrar por:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        _buildFilterChip('Todas', true),
                        const SizedBox(width: 8),
                        _buildFilterChip('Comunicados', false),
                        const SizedBox(width: 8),
                        _buildFilterChip('Sostenibilidad', false),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              
              // Lista de noticias para la página actual
              if (_paginatedNewsItems.isNotEmpty && _currentPage < _paginatedNewsItems.length)
                ..._paginatedNewsItems[_currentPage].map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: NewsCard(
                    title: item.title,
                    date: item.date,
                    imageUrl: item.imageUrl,
                    summary: item.summary,
                    newsId: item.id,
                  ),
                ))
              else
                const Center(
                  child: Text('No hay noticias disponibles'),
                ),
              
              // Paginación
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _currentPage > 0 
                        ? () {
                            setState(() {
                              _currentPage--;
                            });
                          } 
                        : null, // Deshabilitar si estamos en la primera página
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _currentPage > 0 ? AppColors.primary : Colors.grey,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(12),
                    ),
                    child: const Icon(Icons.arrow_back, size: 20, color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  
                  // Mostrar números de página
                  for (int i = 0; i < _paginatedNewsItems.length; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentPage = i;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: i == _currentPage ? AppColors.primary : Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            '${i + 1}',
                            style: TextStyle(
                              color: i == _currentPage ? Colors.white : AppColors.textPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: _currentPage < _paginatedNewsItems.length - 1 
                        ? () {
                            setState(() {
                              _currentPage++;
                            });
                          } 
                        : null, // Deshabilitar si estamos en la última página
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _currentPage < _paginatedNewsItems.length - 1 
                          ? AppColors.primary 
                          : Colors.grey,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(12),
                    ),
                    child: const Icon(Icons.arrow_forward, size: 20, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildFilterChip(String label, bool isSelected) {
    return GestureDetector(
      onTap: () {
        // Implementar la lógica de filtrado aquí
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.primary : Colors.grey.shade300,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : AppColors.textPrimary,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}