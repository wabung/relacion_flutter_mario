import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import '../widgets/widgets.dart';

class RandomColors extends StatefulWidget {
  const RandomColors({super.key});

  @override
  State<RandomColors> createState() => _RandomColors();
}

class _RandomColors extends State<RandomColors> {
  int points = 0;
  int tiempoRestante = 30;
  bool juegoActivo = true;
  late Timer gameTimer;
  late Timer colorTimer;
  late String randomName;
  late Color randomColor;
  var colorNames = ['azul', 'verde', 'naranja'];
  var colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
  ];

  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
    iniciarJuego();
  }

  @override
  void dispose() {
    gameTimer.cancel();
    colorTimer.cancel();
    super.dispose();
  }

  void iniciarJuego() {
    colorTimer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      if (juegoActivo) {
        getRandomColor();
        getRandomName();
        setState(() {});
      }
    });

    gameTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (tiempoRestante > 0) {
        setState(() {
          tiempoRestante--;
        });
      } else {
        finalizarJuego();
      }
    });
  }

  void finalizarJuego() {
    setState(() {
      juegoActivo = false;
    });
    colorTimer.cancel();
    gameTimer.cancel();
  }

  void reiniciarJuego() {
    setState(() {
      points = 0;
      tiempoRestante = 30;
      juegoActivo = true;
    });
    gameTimer.cancel();
    colorTimer.cancel();
    iniciarJuego();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Colores Random'))),
      drawer: const AppDrawer(),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Tiempo: $tiempoRestante s',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'Puntos: $points',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Center(
            child: GestureDetector(
              onTap: juegoActivo
                  ? () {
                      onGiftTap(randomName, randomColor);
                    }
                  : null,
              child: Opacity(
                opacity: 1.0,
                child: Column(
                  children: [
                    Container(width: 120, color: randomColor, height: 120),
                    Text(
                      randomName,
                      style: TextStyle(
                        color: randomColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (!juegoActivo)
            Column(
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    'El juego ha terminado. Tu puntuación final es: $points',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: reiniciarJuego,
                  icon: const Icon(Icons.restart_alt),
                  label: Text('Reiniciar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15,
                    ),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          if (juegoActivo)
            ElevatedButton.icon(
              onPressed: reiniciarJuego,
              icon: const Icon(Icons.restart_alt),
              label: Text('Reiniciar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
        ],
      ),
    );
  }

  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomColor = colorHex[randomNumber];
  }

  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomName = colorNames[randomNumber];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) {
      return 'azul';
    } else if (hexColor == const Color(0xFF00FF00)) {
      return 'verde';
    } else {
      return 'naranja';
    }
  }

  void onGiftTap(String name, Color color) {
    if (!juegoActivo) return;

    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;
    } else {
      points--;
    }
    setState(() {});
  }
}
