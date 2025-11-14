import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaTextosContenedor extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;
  
  const PantallaTextosContenedor({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Textos en contenedor')),
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
              Text(
                'Doña Uzeada de Ribera Maldonado de Bracamonte y Anaya era baja, rechoncha, abigotada. Ya no existia razon para llamar talle al suyo. ',
                style: GoogleFonts.playball(fontSize: 30),
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
              ),
              Text(
                'Sus colores vivos, sanos, podian mas que el albayalde y el soliman del afeite, con que se blanqueaba por simular melancolias. Gastaba dos parches oscuros, adheridos a las sienes y que fingian medicamentos.',
                style: GoogleFonts.damion(fontSize: 30, color: const Color.fromARGB(255, 243, 33, 33)),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
              ),
              Text(
                'Tenia los ojitos ratoniles, maliciosos. Sabia dilatarlos duramente o desmayarlos con recato o levantarlos con disimulo.',
                style: GoogleFonts.akronim(fontSize: 30, color: const Color.fromARGB(255, 0, 0, 0)),
                overflow: TextOverflow.fade,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
    );
  }
}