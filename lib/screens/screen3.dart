import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  final Map<String, String> gustos = const {
    'Vegetta777': 'assets/imgs/iloveimg-converted/advertencia esto te gustara.png',    
    'Backrroms_selfi': 'assets/imgs/iloveimg-converted/Backrooms selfie with Bacteria.png',    
    'BACKROOMS': 'assets/imgs/iloveimg-converted/BACKROOMS.png',    
    'Minecraft': 'assets/imgs/iloveimg-converted/descarga.png',    
    'MLP': 'assets/imgs/iloveimg-converted/Mane 6 (My Little Pony_ Friendship Is Magic).png',    
    'SCP': 'assets/imgs/iloveimg-converted/SITE TRUE EYE LOGO (FOR PERSONAL USE ONLY).png'
  };

  final Map<String, String> heroes = const {
    'Sipderman': 'assets/imgs/iloveimg-converted/117+ Spider Man Wallpapers _ Free download _ Best Collection.png',
    'Superman': 'assets/imgs/iloveimg-converted/Batman Profile Rain Dark Blue Desktop Wallpaper',
    'Batman': 'assets/imgs/iloveimg-converted/descarga (3).png',
    'Loki': 'assets/imgs/iloveimg-converted/Disney Lovers! • Instagram.png',
    'Ironman': 'assets/imgs/iloveimg-converted/Iron Man.png',
    'Daredavil': 'assets/imgs/iloveimg-converted/daredavil (arifinity_) on X.png'
  };

  // final dogs = const[
  //   'Caramelo',    
  //   'Kevin',    
  //   'Pichirilo',    
  //   'Pelusa',    
  //   'Hashi',    
  //   'Candelo'    
  // ];

  // final cats = const[
  //   'Silvestre',
  //   'Wiskas',
  //   'Garfield',
  //   'Felix',
  //   'Tinny'
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3')),
      body: ListView(
        children: [
          ...gustos.entries.map((gusto){
            return _tileGustos(
              gusto.key, 
              gusto.value, 
              Color.fromARGB(255, 198, 204, 19), 
              Color.fromARGB(255, 255, 98, 0), 
              Color.fromARGB(255, 0, 251, 255)
            );
          }),

          Divider(),

          ...heroes.entries.map((heroes){
            return _tileGustos(
              heroes.key, 
              heroes.value, 
              Color.fromARGB(255, 1, 14, 51), 
              Color.fromARGB(255, 244, 29, 255), 
              Color.fromARGB(255, 0, 251, 255)
            );
          }),

          // Divider(),

          // ...cats.map((cat) => ListTile(
          //   leading: Icon(Icons.pets_rounded),
          //   title: Text(cat),
          //   subtitle: Text("Un gato comlicado"),
          //   trailing: Icon(Icons.arrow_forward),
          // )),
        ]
      )
    );
  }

  Widget _tileGustos(String gustoName, String gustoImage, Color tileColor, Color iconColor, Color textColor){
    final tile = ListTile(
      leading: Image.asset(gustoImage, width: 50, height: 50),
      title: Text(gustoName),
      subtitle: Text("Me encanta Vegetta777"),
      trailing: Icon(Icons.arrow_forward),
      tileColor: tileColor,
      iconColor: iconColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      )
    );

    final espacio = SizedBox(height: 10);

    return Column(
      children: [
        tile,
        espacio
      ],
    );
  }
}