import 'package:flutter/material.dart';
import '../routes/app_routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Menú',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: const Text('Pantalla Principal (sobre mi)'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.home);
            },
          ),
          ListTile(
            title: const Text('Nombre y repositorio'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.repo);
            },
          ),
          ListTile(
            title: const Text('Galería de fotos'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.fotos);
            },
          ),
          ListTile(
            title: const Text('Iconos'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.iconos);
            },
          ),
          ListTile(
            title: const Text('Fotos en columna'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.columnaFotos);
            },
          ),
          ListTile(
            title: const Text('Textos en contenedor'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.textos);
            },
          ),
          ListTile(
            title: const Text('Fotos repetidas'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.fotosRepetidas);
            },
          ),
          ListTile(
            title: const Text('Fotos responsive'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.responsive);
            },
          ),
          ListTile(
            title: const Text('Desafío'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.desafio);
            },
          ),
          ListTile(
            title: const Text('Contador de clicks'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.contador);
            },
          ),
          ListTile(
            title: const Text('Perfil de Instagram'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.instagram);
            },
          ),
          ListTile(
            title: const Text('Colores Random'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.coloresRandom);
            },
          ),
          ListTile(
            title: const Text('Imágenes Random'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, AppRoutes.imagenesRandom);
            },
          ),
        ],
      ),
    );
  }
}
