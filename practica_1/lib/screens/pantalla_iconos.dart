import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaIconos extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;
  
  const PantallaIconos({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Fila de iconos')),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_2),
            onPressed: () {
              toggleTheme(!isDarkMode);
            },
          ),
          IconButton(
            icon: const Icon(Icons.brightness_5),
            onPressed: () {
              toggleTheme(isDarkMode);
            },
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 40, color: Colors.blue),
            Icon(Icons.star, size: 40, color: Colors.amber),
            Icon(Icons.settings, size: 40, color: Colors.purple),
            Icon(Icons.favorite, size: 40, color: Colors.red),
            Icon(Icons.person, size: 40, color: Colors.green),
          ],
        ),
      ),
    );
  }
}