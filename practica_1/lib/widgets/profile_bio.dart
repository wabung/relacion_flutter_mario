import 'package:flutter/material.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({super.key});

  @override
  Widget build(BuildContext context) {
    final anchura = MediaQuery.of(context).size.width;
    
    return SizedBox(
      width: anchura * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text("meowl", style: TextStyle(fontWeight: FontWeight.bold)),
          Text("New soul", style: TextStyle(color: Colors.grey)),
          Text(
            "I came to this strange world hoping i could learn a bit about how to give and take",
            overflow: TextOverflow.clip,
          ),
          Text("FYN"),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
