import 'package:flutter/material.dart';
import 'package:tp3/listenseignant.dart';
import 'index.dart';
import 'inscription.dart';
import 'listeEtudiant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => Index(), // Changed index to Index
        '/inscription': (context) => inscription(), // Changed inscription to Inscription
        '/listeEtudiant': (context) => listeEtudiant(),
        '/listenseignant': (context) => listenseignant()// Changed listeEtudiant to ListeEtudiant
      },
    );
  }
}
