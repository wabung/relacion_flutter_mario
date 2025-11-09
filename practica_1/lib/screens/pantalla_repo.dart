import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaRepo extends StatelessWidget {
  const PantallaRepo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Repo y nombre'))),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Mario García Marín',
              style: TextStyle(fontSize: 30, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
            const Text("https://github.com/wabung/relacion_flutter_mario",
              style: TextStyle(fontSize: 20, color: Colors.lightBlue),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}