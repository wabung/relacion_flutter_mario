import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const String home = '/';
  static const String textos = '/textos';
  static const String iconos = '/iconos';
  static const String fotos = '/fotos';
  static const String fotosRepetidas = '/fotos-repetidas';
  static const String columnaFotos = '/columna-fotos';
  static const String contador = '/contador';
  static const String desafio = '/desafio';
  static const String repo = '/repo';
  static const String responsive = '/responsive';
  static const String instagram = '/instagram';
  static const String coloresRandom = '/colores-random';
  static const String imagenesRandom = '/imagenes-random';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const PantallaPrincipal(),
    textos: (context) => const PantallaTextosContenedor(),
    iconos: (context) => const PantallaIconos(),
    fotos: (context) => const PantallaFotos(),
    fotosRepetidas: (context) => const PantallaFotosRepetidas(),
    columnaFotos: (context) => const PantallaFotosColumna(),
    contador: (context) => const PantallaContador(),
    desafio: (context) => const PantallaDesafio(),
    repo: (context) => const PantallaRepo(),
    responsive: (context) => const PantallaResponsive(),
    instagram: (context) => const PantallaPerfilInstagram(),
    coloresRandom: (context) => const RandomColors(),
    imagenesRandom: (context) => const PantallaImagenesRandom(),
  };

  static const String initialRoute = home;
}
