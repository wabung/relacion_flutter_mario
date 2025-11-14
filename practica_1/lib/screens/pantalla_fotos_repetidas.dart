import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaFotosRepetidas extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;
  
  const PantallaFotosRepetidas({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Imagenes repetidas')),
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
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/gato_entrenando.png', width: 150, height: 150),
              
              Image(
                image: NetworkImage('https://i.imgur.com/QDEEzlC.jpeg'),
                width: 150,
                height: 150,
              ),
              
              Image.asset('assets/img/gato_naranja.png', width: 150, height: 150),
              
              Image.asset('assets/img/gato_entrenando.png', width: 150, height: 150),
              
              Image(
                image: NetworkImage('https://i.imgur.com/J8zvgVs.jpeg'),
                width: 150,
                height: 150,
              ),
            
              Image.asset('assets/img/gato_naranja.png', width: 150, height: 150),
              
              Image.asset('assets/img/gato_entrenando.png', width: 150, height: 150),
              
              Image(
                image: NetworkImage('https://i.imgur.com/WhlSpA3.jpeg'),
                width: 150,
                height: 150,
              ),
              
              Image.asset('assets/img/gato_naranja.png', width: 150, height: 150),
            ],
          ),
        ),
    );
  }
}