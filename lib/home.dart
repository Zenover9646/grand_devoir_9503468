import 'package:flutter/material.dart';
import 'detail.dart';
import 'deconnection.dart';
import 'livre.dart';

class HomePage extends StatelessWidget {
  final String username;

  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livres - $username'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const DeconnexionPage()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: livres.length,
        itemBuilder: (context, index) {
          final livre = livres[index];
          return ListTile(
            title: Text(livre.titre),
            subtitle: Text(livre.auteur),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => DetailLivrePage(livre: livre),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
