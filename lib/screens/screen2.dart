import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 2',
        style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            mostrarImagen(1),
            SizedBox(width: 30),
            mostrarImagen(2),
            SizedBox(width: 30),
            mostrarImagen(3)
          ]
        )
      )
    );
  }

  Widget mostrarImagen(int numImagen){
    String nombreImagen = '';
    switch(numImagen) {
      case 1: nombreImagen = 'assets/imgs/pexels-bidbtc-39700012.jpg';
        break;
      case 2: nombreImagen = 'assets/imgs/pexels-gabriel-villaverde-419907476-15104851.jpg';
        break;
      case 3: nombreImagen = 'assets/imgs/pexels-jplenio-20208915.jpg';
        break;
    }
    return Image.asset(
      nombreImagen,
      width: 300,
      height: 150,
      fit: BoxFit.fill
    );
  }
}