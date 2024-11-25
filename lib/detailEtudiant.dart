import 'package:flutter/material.dart';
import 'Etudiant.dart';
class detailEtudiant extends StatelessWidget
{
  Etudiant etudiant;
  detailEtudiant(this.etudiant);

 @override
 Widget build(BuildContext context)
 {
   return Scaffold(
     appBar: AppBar(
       title: Text('Etudiant infos'),
       leading: IconButton(
         icon:Icon(Icons.arrow_back),
         onPressed: (){
           Navigator.pop(context);
         },
       ),
     ),
   body: Center(
 child: Column(children:[
   Text('id :${etudiant.id}'),
   Text('nom ${etudiant.nom}'),
   Text('age ${etudiant.age}'),
 ])));
 }
}