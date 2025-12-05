import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class PantallaRepo extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;
  
  const PantallaRepo({super.key, required this.toggleTheme, required this.isDarkMode});

  Future<void> _abrir() async {
    final Uri url = Uri.parse('https://github.com/wabung/relacion_flutter_mario');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('No se pudo abrir el enlace');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Repo y nombre')),
      actions: [
          IconButton(
            icon: const Icon(Icons.brightness_2),
            onPressed: () {
              toggleTheme(!isDarkMode);
            },
          ),
          IconButton(
            icon: const Icon(Icons.brightness_5),
            onPressed: () {
              toggleTheme(isDarkMode);
            },
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Mario García Marín',
              style: TextStyle(fontSize: 30,),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: _abrir,
              child: const Text("https://github.com/wabung/relacion_flutter_mario",
              style: TextStyle(fontSize: 20,),
              textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}