import 'package:flutter/material.dart';

class ProfilePosts extends StatelessWidget {
  const ProfilePosts({super.key});

  @override
  Widget build(BuildContext context) {
    return
      GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          List<String> imagenes = [
            'assets/img/meowl_king.png',
            'assets/img/meowl_angel.png',
            'assets/img/meowl_pijama.png',
            'assets/img/meowl.png',
            'assets/img/meowl_vampire.png',
            'assets/img/meowl_surprised.png',
            'assets/img/meowl_filtro.png',
            'assets/img/meowl_friends.png',
            'assets/img/meowl_bol.png',
            'assets/img/meowl_soldier.png',
          ];
          return Image.asset(
            imagenes[index],
            fit: BoxFit.cover
          );
        },
      );
  }
}
