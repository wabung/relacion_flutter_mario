import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class PantallaResponsive extends StatelessWidget {
  const PantallaResponsive({super.key});


  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    final anchura = tamano.width;
    final altura = tamano.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Diseño responsive",
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Diseño responsive'))),
        drawer: const AppDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset('assets/img/speed.png', width: anchura * 0.2, height: altura * 0.2),
                    Text('W Speed')
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Column(
                        children: [
                          Image.asset('assets/img/meowl.png', width: anchura * 0.2, height: altura * 0.2),
                          Text('Meowl')
                        ],
                      ),
                    Center(
                      child: Column(
                        children: [
                          Image.asset('assets/img/totr.png', width: anchura * 0.2, height: altura * 0.2),
                          Text('TotR')
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                        children: [
                          Image.asset('assets/img/skebob.png', width: anchura * 0.2, height: altura * 0.2),
                          Text('Skebob')
                        ],
                      ),
                    Column(
                      children: [
                          Image.asset('assets/img/trollge.png', width: anchura * 0.2, height: altura * 0.2),
                          Text('Trollge')
                        ],
                    ),
                    Column(
                        children: [
                          Image.asset('assets/img/mango.png', width: anchura * 0.2, height: altura * 0.2),
                          Text('Mango')
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}