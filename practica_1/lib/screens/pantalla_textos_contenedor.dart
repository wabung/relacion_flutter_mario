import 'package:flutter/material.dart';
import '../widgets/drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaTextosContenedor extends StatelessWidget {
  const PantallaTextosContenedor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Textos en contenedor",
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Textos en contenedor'))),
        drawer: const AppDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Doña Uzeada de Ribera Maldonado de Bracamonte y Anaya era baja, rechoncha, abigotada. Ya no existia razon para llamar talle al suyo. ',
                style: GoogleFonts.playball(fontSize: 30, color: Colors.blue),
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
      ),
    );
  }
}