import 'package:flutter/material.dart';

class Perguntas extends StatelessWidget {
 
  final String? texto;

  Perguntas(this.texto);
  
  @override
  Widget build(BuildContext context) {
     return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        // labelText: 'Enter name',
        prefixIcon: Align(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: Icon(
            Icons.person,
          ),
        ),
      ),
    );
  }
}
