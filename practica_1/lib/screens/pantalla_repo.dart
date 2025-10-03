import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class PantallaRepo extends StatelessWidget {
  const PantallaRepo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Repositorio y nombre",
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Repo y nombre'))),
        drawer: const AppDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mario García Marín',
                style: TextStyle(fontSize: 30, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
              Text("https://github.com/wabung/relacion_flutter_mario",
                style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}