import 'package:flutter/material.dart';
import 'constants/colors.dart';
import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/energy_screen.dart';
import 'screens/news_screen.dart';
import 'screens/news_detail_screen.dart';
import 'utils/navigation_service.dart';

void main() {
  runApp(const ColbunApp());
}

class ColbunApp extends StatelessWidget {
  const ColbunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colbún App',
      navigatorKey: NavigationService().navigatorKey,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          color: AppColors.primary,
          elevation: 0,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.textPrimary),
          bodyMedium: TextStyle(color: AppColors.textSecondary),
        ),
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        '/about': (context) => const AboutScreen(),
        '/energy': (context) => const EnergyScreen(),
        '/news': (context) => const NewsScreen(),
        '/news/detail': (context) => const NewsDetailScreen(),
      },
      initialRoute: '/',
    );
  }
}