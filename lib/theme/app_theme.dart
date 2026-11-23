// el tema define colores, estilos y fuentes para la app
// Constante de tema
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {

  // Definnición de colores para el tema claro
  static const primaryColor = Color.fromARGB(245, 25, 25, 25);
  static const secondaryColor = Color.fromARGB(250, 41, 1, 38);
  static const bgColor = Color.fromARGB(236, 169, 96, 246);
  static const accentColor = Color.fromARGB(255, 30, 0, 255);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(255, 4, 228, 228),
    appBarTheme: AppBarTheme(
      color: const Color.fromARGB(255, 244, 24, 20),
      titleTextStyle: GoogleFonts.comfortaa(
        color: const Color.fromARGB(255, 255, 255, 240),
        fontSize: 20.5
      )
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(primaryColor),
        foregroundColor: WidgetStateProperty.all(accentColor),
        textStyle: WidgetStateProperty.all(
          GoogleFonts.comfortaa(
            fontSize: 16.0
          )
        )
      )
    ),

    textTheme: TextTheme(
      headlineLarge: GoogleFonts.indieFlower(
        color: primaryColor,
        fontSize: 25.5,
        fontWeight: FontWeight.w500
      ),

      // Estilo de texto para texto pequeño
      bodySmall: GoogleFonts.montserrat(
        color: secondaryColor,
        fontSize: 14.5
      )
    )
  );
}
