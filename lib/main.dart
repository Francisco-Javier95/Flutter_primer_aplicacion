// import 'package:aplicacion_1_2/screens/screen2.dart';

import 'package:aplicacion_1_3/screens/screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Quita la etiqueta de debug
      title: 'Proyecto 1', // Titulo de la applicación
      home: Screen1(), //Indica que ventana se muestra al inicio
    );
  }
}
