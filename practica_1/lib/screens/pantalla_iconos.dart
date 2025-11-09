import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaIconos extends StatelessWidget {
  const PantallaIconos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Fila de iconos'))),
      drawer: const AppDrawer(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 40, color: Colors.blue),
            Icon(Icons.star, size: 40, color: Colors.amber),
            Icon(Icons.settings, size: 40, color: Colors.grey),
            Icon(Icons.favorite, size: 40, color: Colors.red),
            Icon(Icons.person, size: 40, color: Colors.green),
          ],
        ),
      ),
    );
  }
}