import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Segunda pantalla",
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Sobre mi'))),
        drawer: const AppDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img/wabung.png'),
              Text(
                'Mario García Marín',
                style: TextStyle(fontSize: 30, color: Colors.blue),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}