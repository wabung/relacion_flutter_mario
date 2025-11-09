import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class PantallaPerfilInstagram extends StatelessWidget {
  const PantallaPerfilInstagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Meowl', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 5),
              Icon(Icons.verified, color: Colors.blue, size: 20),
            ],
          ),
        ),
      ),
      drawer: const AppDrawer(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeader(),
            ProfileBio(),
            ProfileButtons(),
            ProfileHistorias(),
            ProfileOpciones(),
            ProfilePosts(),
          ],
        ),
    );
  }
}
