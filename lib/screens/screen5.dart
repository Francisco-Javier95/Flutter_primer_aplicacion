import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5>{
  // Variables para almacenar los calores de entrada
  bool _switchValue = false;
  double _sliderValue = 0.0;
  TextEditingController _textController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 5')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // S distribuyen los widgets
        children: [
          Text('Entradas de datos'),
          // Llamadas a los widgets de entrada de datos
          _entradaTexto(),
          _entradaSwitch(),
          _entradaSlider()
        ],
      )
    );
  }

  TextField _entradaTexto() {
    return TextField(
      controller: _textController,
      decoration: InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingresa tu nombre',
        border: OutlineInputBorder()
      ),
      onChanged: (value) {
        print('Valor el TextField $value');
      },
    );
  }

  Row _entradaSwitch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('¿Te gusta Flutter?'),
        Switch(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            }); // Acción al cambiar el switch
          }
        ),
      ]
    );
  }

  Column _entradaSlider(){
    return Column(
      children: [
        Text('Indica que tanto te gusta Flutter: '),
        Slider(
          min: 0.0,
          max: 10.0,
          activeColor: Colors.blueAccent,
          thumbColor: Colors.amber,
          value: _sliderValue,
          divisions: 10,
          label: '${_sliderValue.round()}',
          onChanged: (value) {
            setState(() {
              _sliderValue = value;
              print('Se cambió el slider: $_sliderValue');
            });
          },
        )
      ],
    );
  }

}
