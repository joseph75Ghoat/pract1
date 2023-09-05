import 'package:flutter/material.dart';
import 'package:login/card_f1.dart';
import 'package:login/routes.dart';
//import 'package:login/screens/login_screen.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:login/screens/login_screen.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: getRouters(),
      theme: ThemeData.dark(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});
  final data = [
    CardChampData(
        title: 'Ferrari',
        subtitile:
            'La primera participación de Ferrari en la Fórmula 1 fue en el Gran Premio de Mónaco de 1950, con el Tipo 125 F1. Es el equipo activo más antiguo del campeonato, en 2020 alcanzó los 1000 Grandes Premios, y es el que ha conseguido más victorias (238), campeonatos de pilotos (15) y campeonatos de constructores (16).',
        image: const AssetImage("imagenes/scuderia-ferrari-f1.jpg"),
        backgroundColor: Colors.red,
        titleColor: Colors.white,
        subtitleColor: Colors.white,
        background: LottieBuilder.asset('assets/animation/ferrari1.json')),
    CardChampData(
        title: 'Mercedes F1',
        subtitile:
            'Mercedes AMG Petronas Formula One Team, anteriormente conocida como Mercedes GP, es una escudería de Fórmula 1 dirigida por la empresa automovilística alemana Daimler AG. De ella han formado parte pilotos como Michael Schumacher o Lewis Hamilton. Inició sus andaduras en el Gran Circo en 1954, ganando su primer campeonato de Constructores con Juan Manuel Fangio como piloto..',
        image: const AssetImage("imagenes/mercedes-f1-logo-1.jpg"),
        backgroundColor: Color.fromRGBO(12, 33, 128, 1),
        titleColor: Colors.white,
        subtitleColor: Colors.white,
        background: LottieBuilder.asset("assets/animation/ferrari1.json")),
    CardChampData(
        title: '',
        subtitile:
            'Red Bull Racing es un equipo privado de origen austríaco con sede en Milton Keynes, en Gran Bretaña. Es propiedad de la marca de bebidas homónima. El origen de Red Bull en el automovilismo se remonta al año 1987, cuando fue patrocinadora personal del piloto Gerhard Berger. Entre 1995 y 2004, patrocinó al equipo Sauber.',
        image: const AssetImage("imagenes/1667301652823.jpeg"),
        backgroundColor: Colors.black,
        titleColor: Colors.white,
        subtitleColor: Colors.white,
        background: LottieBuilder.asset("assets/animation/ferrari1.json")),
        
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Equipos de Fórmula 1'),
        actions: [
          IconButton(
            icon: Icon(Icons.login), // Puedes cambiar este icono
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => loginScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: ConcentricPageView(
        itemCount: data.length,
        colors: data.map((e) => e.backgroundColor).toList(),
        itemBuilder: (int index) {
          return CardChamp(data: data[index]);
        },
      ),
    );
  }
}

