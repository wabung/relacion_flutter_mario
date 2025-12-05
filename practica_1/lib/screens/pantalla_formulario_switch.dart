import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaFormularioSwitch extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> toggleTheme;
  
  const PantallaFormularioSwitch({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  State<PantallaFormularioSwitch> createState() => _PantallaFormularioSwitchState();
}

class _PantallaFormularioSwitchState extends State<PantallaFormularioSwitch> {
  final _formKey = GlobalKey<FormState>();
  final _nombreController = TextEditingController();
  final _correoController = TextEditingController();
  String? _genero;
  bool _prefieresDeportes = true;
  
  bool _gimnasio = false;
  bool _practicarDeporte = false;
  bool _irAlCine = false;
  
  bool _crunchyroll = false;
  bool _disneyPlus = false;
  bool _hboMax = false;

  @override
  void dispose() {
    _nombreController.dispose();
    _correoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Formulario con Switch')),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Formulario de Preferencias',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _nombreController,
                decoration: const InputDecoration(
                  labelText: 'Nombre completo',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor introduce tu nombre';
                  }
                  final regex = RegExp(r'[A-ZÑÁÉÍÓÚ][a-zñáéíóú]+$');
                  if (!regex.hasMatch(value)) {
                    return 'Solo se permiten letras y espacios';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _correoController,
                decoration: const InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor introduce tu correo';
                  }
                  final regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                  if (!regex.hasMatch(value)) {
                    return 'Introduce un correo válido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 15),
              DropdownButtonFormField<String>(
                value: _genero,
                decoration: const InputDecoration(
                  labelText: 'Género',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.people),
                ),
                items: const [
                  DropdownMenuItem(value: 'Masculino', child: Text('Masculino')),
                  DropdownMenuItem(value: 'Femenino', child: Text('Femenino')),
                ],
                onChanged: (value) {
                  setState(() {
                    _genero = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor selecciona tu género';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 30),
              const Text(
                'Preferencias de Ocio',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
            SwitchListTile(
              title: Text(_prefieresDeportes ? 'Me gustan los deportes' : 'Prefiero quedarme en casa'),
              subtitle: Text(_prefieresDeportes ? 'Actividades al aire libre' : 'Streaming y entretenimiento'),
              value: _prefieresDeportes,
              onChanged: (value) {
                setState(() {
                  _prefieresDeportes = value;
                  _gimnasio = false;
                  _practicarDeporte = false;
                  _irAlCine = false;
                  _crunchyroll = false;
                  _disneyPlus = false;
                  _hboMax = false;
                });
              },
            ),
            const Divider(height: 40),
            if (_prefieresDeportes)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '¿Qué actividades te gustan?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  CheckboxListTile(
                    title: const Text('Entrenar en el gimnasio'),
                    value: _gimnasio,
                    onChanged: (value) {
                      setState(() {
                        _gimnasio = value ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('Practicar deporte'),
                    value: _practicarDeporte,
                    onChanged: (value) {
                      setState(() {
                        _practicarDeporte = value ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('Ir al cine'),
                    value: _irAlCine,
                    onChanged: (value) {
                      setState(() {
                        _irAlCine = value ?? false;
                      });
                    },
                  ),
                ],
              ),
            if (!_prefieresDeportes)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '¿Qué plataformas de streaming usas?',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  CheckboxListTile(
                    title: const Text('Crunchyroll'),
                    value: _crunchyroll,
                    onChanged: (value) {
                      setState(() {
                        _crunchyroll = value ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('Disney Plus'),
                    value: _disneyPlus,
                    onChanged: (value) {
                      setState(() {
                        _disneyPlus = value ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: const Text('HBO Max'),
                    value: _hboMax,
                    onChanged: (value) {
                      setState(() {
                        _hboMax = value ?? false;
                      });
                    },
                  ),
                ],
              ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _mostrarResultados();
                  }
                },
                child: const Text('Enviar'),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }

  void _mostrarResultados() {
    List<String> seleccionadas = [];
    
    if (_prefieresDeportes) {
      if (_gimnasio) seleccionadas.add('Gimnasio');
      if (_practicarDeporte) seleccionadas.add('Practicar deporte');
      if (_irAlCine) seleccionadas.add('Ir al cine');
    } else {
      if (_crunchyroll) seleccionadas.add('Crunchyroll');
      if (_disneyPlus) seleccionadas.add('Disney Plus');
      if (_hboMax) seleccionadas.add('HBO Max');
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Resultados del formulario'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _prefieresDeportes ? 'Deportes y actividades:' : 'Plataformas de streaming:',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            if (seleccionadas.isEmpty)
              const Text('No has seleccionado ninguna opción')
            else
              ...seleccionadas.map((item) => Text('• $item')),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cerrar'),
          ),
        ],
      ),
    );
  }
}
