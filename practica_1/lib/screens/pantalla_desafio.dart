import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaDesafio extends StatelessWidget {
  const PantallaDesafio({super.key});


  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    final anchura = tamano.width;
    final altura = tamano.height;

    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Pantalla de reto'))),
      drawer: const AppDrawer(),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: anchura * 0.4,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 38, 62, 80),
                  borderRadius: BorderRadius.circular(45),
                ),
                child: Container(
                  width: anchura * 0.3,
                  height: altura * 0.1,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 182, 220, 252),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      bottomLeft: Radius.circular(45),
                    ),
                  ),
                  child: Text(
                    'Reto',
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
