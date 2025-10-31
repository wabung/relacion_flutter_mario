import 'package:flutter/material.dart';

class ProfileHistorias extends StatelessWidget {
  const ProfileHistorias({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 10),
        Column(
          children: [
            SizedBox(height: 10),
            ClipOval(
              child: Image(
                image: AssetImage('assets/img/meowl_family.png'),
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Text("Family", style: TextStyle(fontSize: 16)),
          ],
        ),
        SizedBox(width: 20),
        Column(
          children: [
            SizedBox(height: 10),
            ClipOval(
              child: Image(
                image: AssetImage('assets/img/meowl_gf.png'),
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Text("Wife", style: TextStyle(fontSize: 16)),
          ],
        ),
        SizedBox(width: 20),
        Column(
          children: [
            SizedBox(height: 10),
            ClipOval(
              child: Image(
                image: AssetImage('assets/img/meowl_baby.png'),
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Text("Son", style: TextStyle(fontSize: 16)),
          ],
        ),
      ],
    );
  }
}
