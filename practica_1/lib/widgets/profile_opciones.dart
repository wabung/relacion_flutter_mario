import 'package:flutter/material.dart';

class ProfileOpciones extends StatelessWidget {
  const ProfileOpciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.grid_on)),
        IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shop)),
        IconButton(onPressed: () {}, icon: Icon(Icons.person_outline)),
      ],
    );
  }
}
