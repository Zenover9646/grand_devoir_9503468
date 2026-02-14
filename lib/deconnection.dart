import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';

class DeconnexionPage extends StatelessWidget {
  const DeconnexionPage({super.key});

  Future<void> _seDeconnecter(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('isLoggedIn');
    await prefs.remove('username');

    if (!context.mounted) return;

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const LoginPage()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Deconnexion')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _seDeconnecter(context),
          child: const Text('Se deconnecter'),
        ),
      ),
    );
  }
}
