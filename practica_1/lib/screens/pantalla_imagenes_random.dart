import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import '../widgets/drawer.dart';

class PantallaImagenesRandom extends StatefulWidget {
  const PantallaImagenesRandom({super.key});

  @override
  State<PantallaImagenesRandom> createState() => _PantallaImagenesRandomState();
}

class _PantallaImagenesRandomState extends State<PantallaImagenesRandom> {
  int puntos = 0;
  int tiempoRestante = 2;
  double posicionX = 0;
  double posicionY = 0;
  bool imagenVisible = false;
  late Timer timerImagen = Timer(Duration.zero, () {});
  late Timer timerJuego = Timer(Duration.zero, () {});
  int tiempoJuego = 30;
  bool juegoActivo = true;

  @override
  void initState() {
    super.initState();
    iniciarJuego();
  }

  @override
  void dispose() {
    timerImagen.cancel();
    timerJuego.cancel();
    super.dispose();
  }

  void iniciarJuego() {
    mostrarNuevaImagen();

    timerJuego = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (tiempoJuego > 0) {
        setState(() {
          tiempoJuego--;
        });
      } else {
        finalizarJuego();
      }
    });
  }

  void mostrarNuevaImagen() {
    if (!juegoActivo) return;

    setState(() {
      final random = Random();
      posicionX = random.nextDouble() * 0.7;
      posicionY = 0.2 + random.nextDouble() * 0.4;
      imagenVisible = true;
      tiempoRestante = 2;
    });

    timerImagen.cancel();
    timerImagen = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (tiempoRestante > 0 && imagenVisible) {
        setState(() {
          tiempoRestante--;
        });
      } else {
        timer.cancel();
        if (imagenVisible) {
          setState(() {
            puntos -= 2;
            imagenVisible = false;
          });
          Future.delayed(const Duration(milliseconds: 500), () {
            mostrarNuevaImagen();
          });
        }
      }
    });
  }

  void imagenClickeada() {
    if (!imagenVisible || !juegoActivo) return;

    timerImagen.cancel();
    setState(() {
      puntos++;
      imagenVisible = false;
    });

    Future.delayed(const Duration(milliseconds: 500), () {
      mostrarNuevaImagen();
    });
  }

  void finalizarJuego() {
    setState(() {
      juegoActivo = false;
      imagenVisible = false;
    });
    timerImagen.cancel();
    timerJuego.cancel();
  }

  void reiniciarJuego() {
    timerImagen.cancel();
    timerJuego.cancel();
    setState(() {
      puntos = 0;
      tiempoJuego = 30;
      juegoActivo = true;
    });
    iniciarJuego();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Imágenes Random'))),
      drawer: const AppDrawer(),
      body: Stack(
        children: [
          SizedBox(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      'Tiempo de juego: $tiempoJuego s',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Text(
                    'Puntos: $puntos',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              const SizedBox(height: 10),
              if (juegoActivo)
                const Text(
                  'Haz clic en la imagen',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              if (!juegoActivo)
                Column(
                  children: [
                    const SizedBox(height: 50),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Center(
                        child: Text(
                          'El juego ha terminado. Puntuación final: $puntos',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      onPressed: reiniciarJuego,
                      icon: const Icon(Icons.restart_alt),
                      label: const Text('Reiniciar'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
            ],
          ),
          ),
          if (imagenVisible && juegoActivo)
            Positioned(
              left: MediaQuery.of(context).size.width * posicionX,
              top: MediaQuery.of(context).size.height * posicionY,
              child: GestureDetector(
                onTap: imagenClickeada,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/img/gato_entrenando.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '$tiempoRestante s',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          if (juegoActivo)
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton.icon(
                  onPressed: reiniciarJuego,
                  icon: const Icon(Icons.restart_alt),
                  label: const Text('Reiniciar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
