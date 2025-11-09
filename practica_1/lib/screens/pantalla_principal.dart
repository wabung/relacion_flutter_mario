import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import '../routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi Aplicación Flutter",
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Sobre mi'))),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/wabung.png'),
            const Text(
              'Mario García Marín',
              style: TextStyle(fontSize: 30, color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}