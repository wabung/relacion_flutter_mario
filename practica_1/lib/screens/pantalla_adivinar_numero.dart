import 'package:flutter/material.dart';
import 'dart:math';
import '../widgets/widgets.dart';

class PantallaAdivinarNumero extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;
  
  const PantallaAdivinarNumero({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  State<PantallaAdivinarNumero> createState() => _PantallaAdivinarNumeroState();
}

class _PantallaAdivinarNumeroState extends State<PantallaAdivinarNumero> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  late int _numeroSecreto;
  String _mensaje = 'Adivina el número entre 1 y 100';
  bool _acertado = false;

  @override
  void initState() {
    super.initState();
    _numeroSecreto = Random().nextInt(100) + 1;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _verificarNumero() {
    if (_formKey.currentState!.validate()) {
      final numero = int.parse(_controller.text);
      
      setState(() {
        if (numero == _numeroSecreto) {
          _mensaje = 'Correcto. El número era $_numeroSecreto';
          _acertado = true;
        } else if (numero < _numeroSecreto) {
          _mensaje = 'El número es mayor que $numero';
        } else {
          _mensaje = 'El número es menor que $numero';
        }
      });
      
      _controller.clear();
    }
  }

  void _reiniciar() {
    setState(() {
      _numeroSecreto = Random().nextInt(100) + 1;
      _mensaje = 'Adivina el número entre 1 y 100';
      _acertado = false;
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Adivinar Número')),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _mensaje,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: _acertado ? Colors.green : null,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              if (!_acertado)
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _controller,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Introduce un número',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Por favor introduce un número';
                          }
                          final numero = int.tryParse(value);
                          if (numero == null) {
                            return 'Debe ser un número válido';
                          }
                          if (numero < 1 || numero > 100) {
                            return 'El número debe estar entre 1 y 100';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _verificarNumero,
                        child: const Text('Verificar'),
                      ),
                    ],
                  ),
                ),
              if (_acertado)
                ElevatedButton(
                  onPressed: _reiniciar,
                  child: const Text('Jugar de nuevo'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
