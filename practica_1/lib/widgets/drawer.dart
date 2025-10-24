import 'package:flutter/material.dart';
import 'package:practica_1/screens/pantalla_fotos_repetidas.dart';
import '../screens/pantalla_principal.dart';
import '../screens/pantalla_repo.dart';
import '../screens/pantalla_fotos.dart';
import '../screens/pantalla_iconos.dart';
import '../screens/pantalla_columna_fotos.dart';
import '../screens/pantalla_textos_contenedor.dart';
import '../screens/pantalla_responsive.dart';
import '../screens/pantalla_desafio.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Menú',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: Text('Pantalla Principal (sobre mi)'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
          ListTile(
            title: Text('Nombre y repositorio'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PantallaRepo()),
              );
            },
          ),
          ListTile(
            title: Text('Galería de fotos'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PantallaFotos()),
              );
            },
          ),
          ListTile(
            title: Text('Iconos'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PantallaIconos()),
              );
            },
          ),
          ListTile(
            title: Text('Fotos en columna'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PantallaFotosColumna()),
              );
            },
          ),
          ListTile(
            title: Text('Textos en contenedor'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PantallaTextosContenedor()),
              );
            },
          ),
          ListTile(
            title: Text('Fotos repetidas'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PantallaFotosRepetidas()),
              );
            },
          ),
          ListTile(
            title: Text('Fotos responsive'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PantallaResponsive()),
              );
            },
          ),
          ListTile(
            title: Text('Desafío'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PantallaDesafio()),
              );
            },
          ),
        ],
      ),
    );
  }
}
