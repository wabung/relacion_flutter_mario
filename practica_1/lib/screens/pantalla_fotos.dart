import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaFotos extends StatelessWidget {
  const PantallaFotos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Galeria fotos'))),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/gato_entrenando.png', width: 200, height: 200),
            Image.asset('assets/img/gato_naranja.png', width: 200, height: 200),
            Image.asset('assets/img/gato_kungfu.png', width: 200, height: 200),
          ],
        ),
      ),
    );
  }
}