import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class PantallaFotosColumna extends StatelessWidget {
  const PantallaFotosColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fotos en columna",
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Fotos en columna'))),
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
      ),
    );
  }
}