import 'package:flutter/material.dart';
import 'livre.dart';

class DetailLivrePage extends StatelessWidget {
  final Livre livre;

  const DetailLivrePage({super.key, required this.livre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail du livre')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              livre.titre,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              'Auteur: ${livre.auteur}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            Text(livre.description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
