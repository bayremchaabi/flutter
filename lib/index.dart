import 'package:flutter/material.dart';
import 'enseignant.dart';
class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page Index")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers content vertically
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/inscription');
              },
              child: const Text(
                'Inscription',
                style: TextStyle(fontSize: 30),
              ),
            ),
            const SizedBox(height: 20), // Adds space between the buttons
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listeEtudiant');
              },
              child: const Text(
                'etudiant',
                style: TextStyle(fontSize: 30),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listenseignant');
              },
              child: const Text(
                'enseignant',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],

        ),

      ),
    );

  }
}