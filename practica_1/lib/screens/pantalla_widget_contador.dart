import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaContador extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;
  
  const PantallaContador({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  State<PantallaContador> createState() => _PantallaContadorState();
}

class _PantallaContadorState extends State<PantallaContador> {
  int _veces = 0;

  _incrementar() {
    setState(() {
      _veces++;
    });
  }

  _decrementar() {
    setState(() {
      _veces--;
    });
  }

  _reiniciar() {
    setState(() {
      _veces = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador de clicks'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_2),
            onPressed: () {
              widget.toggleTheme(!widget.isDarkMode);
            },
          ),
          IconButton(
            icon: const Icon(Icons.brightness_5),
            onPressed: () {
              widget.toggleTheme(widget.isDarkMode);
            },
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Número de clicks: $_veces'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  heroTag: "btn_incrementar",
                  onPressed: _incrementar,
                  tooltip: "incrementar",
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  heroTag: "btn_decrementar",
                  onPressed: _decrementar,
                  tooltip: "decrementar",
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  heroTag: "btn_reiniciar",
                  onPressed: _reiniciar,
                  tooltip: "reiniciar",
                  child: Icon(Icons.refresh),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
