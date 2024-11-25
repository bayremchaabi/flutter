import 'package:flutter/material.dart';
import 'enseignant.dart';
class detailenseignant extends StatelessWidget
{
  Enseignant enseignant;
  detailenseignant(this.enseignant);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          title: Text('enseignant infos'),
          leading: IconButton(
            icon:Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      body: Center(
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${enseignant.nom} ${enseignant.prenom}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Institut: ${enseignant.institut}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Email: ${enseignant.mail}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue[800],
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
