// Screen6.dart
import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  final String? nombre; // usar '?' (elvis) para asegurarle al programa que la variable tendra un valor y no imprimiar NULL
  final bool leGustaFlutter;
  final double nivelGusto;
  final int frameworkElegido;
  final bool usaEmulador;
  final bool usaSmartphone;
  final bool usaNavegador;

  const Screen6({
    super.key,
    this.nombre,
    required this.leGustaFlutter, // O colocar que el valor es requerido
    required this.nivelGusto,
    required this.frameworkElegido,
    required this.usaEmulador,
    required this.usaSmartphone,
    required this.usaNavegador,
  });

  String _nombreFramework() {
    switch (frameworkElegido) {
      case 1: return 'Kotlin';
      case 2: return 'Flutter';
      case 3: return 'React Native';
      default: return 'Ninguno';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resumen')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: $nombre', style: const TextStyle(fontSize: 18)),
            Text('¿Le gusta Flutter?: ${leGustaFlutter ? "Sí" : "No"}'),
            Text('Nivel de gusto: ${nivelGusto.round()} / 10'),
            Text('Framework preferido: ${_nombreFramework()}'),
            const Divider(),
            const Text('¿Dónde corre sus apps?'),
            Text('Emulador ${usaEmulador ? "Sí" : "No"}'),
            Text('Smartphone ${usaSmartphone ? "Sí" : "No"}'),
            Text('Navegador WEB ${usaNavegador ? "Sí" : "No"}')
          ],
        ),
      ),
    );
  }
}