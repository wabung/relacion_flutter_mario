import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaFotos extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;
  
  const PantallaFotos({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    final anchura = tamano.width;
    final altura = tamano.height;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Galeria fotos')),
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
            Image.asset('assets/img/gato_entrenando.png', width: anchura * 0.3, height: altura * 0.25),
            Image.asset('assets/img/gato_naranja.png', width: anchura * 0.3, height: altura * 0.25),
            Image.asset('assets/img/gato_kungfu.png', width: anchura * 0.3, height: altura * 0.25),
          ],
        ),
      ),
    );
  }
}