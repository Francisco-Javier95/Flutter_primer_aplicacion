import 'package:aplicacion_1_3/screens/screen2.dart';
import 'package:aplicacion_1_3/screens/screen3.dart';
import 'package:aplicacion_1_3/screens/screen4.dart';
import 'package:aplicacion_1_3/screens/screen5.dart';
import 'package:aplicacion_1_3/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});



  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pantalla 1'
          )
        ),
        body: Container(
          width: 5000,
          color: Color.fromARGB(119, 210, 51, 7),
          child: Column(
            children: <Widget>[
              Text(
                'Selecciona una opción',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              SizedBox(height: 20),
              boton(
                'Ejemplo de Rows', Colors.purple, context, Screen2()
              ),
              SizedBox(height: 20),
              boton(
                'Ejemplo de ListView', const Color.fromARGB(255, 73, 4, 151), context, Screen3()
              ),
              SizedBox(height: 20),
              boton(
                'Entradas de datos', const Color.fromARGB(255, 250, 86, 209), context, Screen4()
              ),
              SizedBox(height: 20),
              botonStateful(
                'Entradas de entrada', const Color.fromARGB(255, 86, 130, 250), context, Screen5()
              )
            ]
          )
        )
      );
  }
  Widget boton(String texto, Color color1, BuildContext context, StatelessWidget screen) {
    return ElevatedButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color1,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
      child: Text(
        texto,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        )
      )
    );
  }

  Widget botonStateful(String texto, Color color1, BuildContext context, StatefulWidget screen) {
    return ElevatedButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color1,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
      child: Text(
        texto,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        )
      )
    );
  }
}