import 'package:flutter/material.dart';
class inscription extends StatelessWidget
{
 const inscription ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Formulaire d\'inscription'),
      ),
      body: Center(
        child: TextButton(
          child: Text('go to index page', style: TextStyle(fontSize:30)),
          onPressed: (){Navigator.pop(context);}),
        ),
      );

  }

}