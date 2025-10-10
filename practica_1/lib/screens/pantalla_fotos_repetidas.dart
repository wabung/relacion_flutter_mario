import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class PantallaFotosRepetidas extends StatelessWidget {
  const PantallaFotosRepetidas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Imagenes repetidas",
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Imagenes repetidas'))),
        drawer: const AppDrawer(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/gato_entrenando.png', width: 150, height: 150),
              
              Image(
                image: NetworkImage('https://picsum.photos/150/150?random=1'),
                width: 150,
                height: 150,
              ),
              
              Image.asset('assets/img/gato_naranja.png', width: 150, height: 150),
              
              Image.asset('assets/img/gato_entrenando.png', width: 150, height: 150),
              
              Image(
                image: NetworkImage('https://picsum.photos/150/150?random=2'),
                width: 150,
                height: 150,
              ),
            
              Image.asset('assets/img/gato_naranja.png', width: 150, height: 150),
              
              Image.asset('assets/img/gato_entrenando.png', width: 150, height: 150),
              
              Image(
                image: NetworkImage('https://picsum.photos/150/150?random=3'),
                width: 150,
                height: 150,
              ),
              
              Image.asset('assets/img/gato_naranja.png', width: 150, height: 150),
            ],
          ),
        ),
      ),
    );
  }
}