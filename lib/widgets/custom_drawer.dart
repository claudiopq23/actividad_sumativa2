import 'package:flutter/material.dart';
import '../constants/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppColors.primary,
            ),
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: 60,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const Text(
                  'Colbún',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          
          // Inicio
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          
          // Nosotros
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('Nosotros'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/about');
            },
          ),
          
          // Energía
          ListTile(
            leading: const Icon(Icons.electric_bolt),
            title: const Text('Energía'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/energy');
            },
          ),
          
          // Noticias
          ListTile(
            leading: const Icon(Icons.newspaper),
            title: const Text('Sala de Prensa'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/news');
            },
          ),
          
          const Divider(),
          
          // Redes sociales
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.facebook, color: AppColors.primary),
                  onPressed: () {
                    // Aquí podrías abrir la URL de Facebook
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.facebook, color: AppColors.primary),
                  onPressed: () {
                    // Aquí podrías abrir la URL de Twitter
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.facebook, color: AppColors.primary),
                  onPressed: () {
                    // Aquí podrías abrir la URL de LinkedIn
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}