import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final dogs = const[
    'Caramelo',    
    'Kevin',    
    'Pichirilo',    
    'Pelusa',    
    'Hashi',    
    'Candelo'    
  ];

  final cats = const[
    'Silvestre',
    'Wiskas',
    'Garfield',
    'Felix',
    'Tinny'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3')),
      body: ListView(
        children: [
          ...dogs.map((dog) => ListTile(
            leading: Icon(Icons.pets_rounded),
            title: Text(dog),
            subtitle: Text("Un perro maravilloso"),
            trailing: Icon(Icons.arrow_forward),
            tileColor: Color.fromARGB(255, 0, 251, 255),
            iconColor: Color.fromARGB(255, 234,22,345),
            textColor: Color.fromARGB(255, 23,252,34),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
          )),
          Divider(),
          ...cats.map((cat) => ListTile(
            leading: Icon(Icons.pets_rounded),
            title: Text(cat),
            subtitle: Text("Un gato comlicado"),
            trailing: Icon(Icons.arrow_forward),
          )),
        ]
      )
    );
  }
}