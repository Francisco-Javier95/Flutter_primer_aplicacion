// el tema define colores, estilos y fuentes para la app
// Constante de tema
 import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(255, 4, 228, 228),
    appBarTheme: AppBarTheme(
      color: const Color.fromARGB(255, 244, 24, 20),
      titleTextStyle: GoogleFonts.lato(
        color: Color.fromARGB(255, 255, 255, 240),
        fontSize: 20.5,
        // FontStyle: 
      ),
    ),
  );
}
