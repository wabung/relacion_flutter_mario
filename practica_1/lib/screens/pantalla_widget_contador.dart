import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaContador extends StatefulWidget {
  const PantallaContador({super.key});

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
      appBar: AppBar(title: Text('Contador de clicks')),
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
                  onPressed: _incrementar,
                  tooltip: "incrementar",
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: _decrementar,
                  tooltip: "decrementar",
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
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
