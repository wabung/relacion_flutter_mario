import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaFotosRepetidas extends StatelessWidget {
  const PantallaFotosRepetidas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Imagenes repetidas'))),
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