import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaFotosColumna extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;
  
  const PantallaFotosColumna({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Fotos en columna')),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/archer.png', width: 120, height: 120),
            Image.asset('assets/img/saber.png', width: 120, height: 120),
            Image.asset('assets/img/lancer.png', width: 120, height: 120),
            Image.asset('assets/img/rider.png', width: 120, height: 120),
            Image.asset('assets/img/berserker.png', width: 120, height: 120),
          ],
        ),
      ),
    );
  }
}