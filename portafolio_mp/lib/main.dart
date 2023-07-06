import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(PortafolioApp());

class PortafolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.teal,
        brightness: Brightness.light,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 16),
        ),
      ),
      home: PortafolioPage(),
    );
  }
}

class PortafolioPage extends StatelessWidget {
  const PortafolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Portafolio"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: Row(
        children: [
          FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: 0.2, // 5 cm de ancho relativo al espacio disponible
            child: Container(
              color: Colors.red,
              // Contenido columna izquierda
            ),
          ),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.green,
                    // Contenido columna central
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        color: Colors.blue,
                        // Contenido columna central con scroll
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.center,
            widthFactor: 0.2, // 5 cm de ancho relativo al espacio disponible
            child: Container(
              color: Colors.yellow,
              // Contenido columna derecha
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.grey[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '© 2023 Mi Página Web. Todos los derechos reservados.',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 8),
            Text(
              'Contacto: info@mipaginaweb.com | Teléfono: 123-456-7890',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
