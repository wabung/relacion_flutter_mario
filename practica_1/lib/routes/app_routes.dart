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
  static const String adivinarNumero = '/adivinar-numero';
  static const String formularioSwitch = '/formulario-switch';

  static Map<String, WidgetBuilder> getRoutes(bool isDarkMode, ValueChanged<bool> toggleTheme) {
    return {
      home: (context) => PantallaPrincipal(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      textos: (context) => PantallaTextosContenedor(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      iconos: (context) => PantallaIconos(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      fotos: (context) => PantallaFotos(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      fotosRepetidas: (context) => PantallaFotosRepetidas(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      columnaFotos: (context) => PantallaFotosColumna(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      contador: (context) => PantallaContador(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      desafio: (context) => PantallaDesafio(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      repo: (context) => PantallaRepo(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      responsive: (context) => PantallaResponsive(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      instagram: (context) => PantallaPerfilInstagram(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      coloresRandom: (context) => RandomColors(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      imagenesRandom: (context) => PantallaImagenesRandom(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      adivinarNumero: (context) => PantallaAdivinarNumero(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
      formularioSwitch: (context) => PantallaFormularioSwitch(
        isDarkMode: isDarkMode,
        toggleTheme: toggleTheme,
      ),
    };
  }

  static const String initialRoute = home;
}
