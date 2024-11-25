import 'package:flutter/material.dart';
import 'detailenseignant.dart';
import 'enseignant.dart';

class listenseignant extends StatelessWidget {
  final List<Enseignant> liste = [
    Enseignant('bayrem', 'chaabi', 'iset kelibia', 'bayrimchaabi@gmail.com'),
    Enseignant('iyed', 'wahbi', 'iset beja', 'iyed444@gmail.com')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Liste des enseignants'),
      ),
      body: ListView.separated(
        itemCount: liste.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              liste[index].nom,
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => detailenseignant(liste[index]),
                ),
              );
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            Divider(color: Colors.lightBlue),
      ),
    );
  }
}
