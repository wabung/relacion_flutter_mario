import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({super.key});

  Future<void> _abrir() async {
    final Uri url = Uri.parse('https://bit.ly/2w9g74q');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('No se pudo abrir el enlace');
    }
  }

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
          TextButton(
          onPressed: _abrir,
          child: Text("https://bit.ly/2w9g74q", style: TextStyle(color: Colors.blue))),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
