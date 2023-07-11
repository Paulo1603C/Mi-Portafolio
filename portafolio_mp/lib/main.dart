import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(PortafolioApp());

class PortafolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portafolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
    final Color blueMarineColor = Colors.blue;

    return Scaffold(
      appBar: AppBar(
        title: Text("Mi Portafolio"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(37, 36, 64, 1.0),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          size: 30,
                        ),
                        color: Colors.white,
                        onPressed: () {
                          // Acción al hacer clic en el icono de GitHub
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 30,
                        ),
                        color: Colors.white,
                        onPressed: () {
                          // Acción al hacer clic en el icono de LinkedIn
                        },
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 30,
                        ),
                        color: Colors.white,
                        onPressed: () {
                          // Acción al hacer clic en el icono de Instagram
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.all(100.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        //cada seccion se manera por column -> dentro iran controlados por contendores
                        //presentacion
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Hola, Mi nombre es ",
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 20),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    'Paulo Martínez',
                                    textStyle: TextStyle(
                                      fontSize: 50,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    speed: Duration(milliseconds: 200),
                                  ),
                                ],
                                repeatForever: true,
                              ),
                            ),
                            SizedBox(height: 15.0,),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text(
                                    "Soy un estudiante de Ingeniería de Software apasionado por la programación y el desarrollo de software." +
                                        " Actualmente, estoy buscando una oportunidad para aplicar mis conocimientos y habilidades en un entorno profesional y aprender de los expertos " +
                                        "en la industria. Estoy interesado en proyectos desafiantes que me permitan crecer y desarrollarme como ingeniero de software.",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 15)),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Container(
                                child: OutlinedButton(
                              onPressed: () {
                                // Acción a realizar cuando se presiona el botón
                              },
                              child: Text(
                                'Presionar',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white24,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  width: 2,
                                  color: Colors.white30,
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ))
                          ],
                        ),
                        //descripcion mia
                        Row(
                          children: [
                            Container(),
                            Container(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ),
            Expanded(
              flex: 1,
              child: Container(
                // Contenido columna derecha
                child: Text("data"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
