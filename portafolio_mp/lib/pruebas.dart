import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

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

  //descarga un pdf
  final pdfUrl =
      'https://drive.google.com/file/d/1stuybcAxlaO4CVOUM4TaQ2KGGzyw9Gb3/view?usp=sharing';
  void downloadPDF() async {
    if (await canLaunch(pdfUrl)) {
      await launch(pdfUrl);
    } else {
      throw 'No se puede abrir la URL del PDF';
    }
  }

  //abrir git
  final github = 'https://github.com/Paulo1603C';
  void openGitHub() async {
    if (await canLaunch(github)) {
      await launch(github);
    } else {
      throw 'No se puede abrir la URL del PDF';
    }
  }

  //abrir linkedin
  final linkedin = 'https://www.linkedin.com/in/paulo-martinez-72585524b/';
  void openGitlinkedin() async {
    if (await canLaunch(linkedin)) {
      await launch(linkedin);
    } else {
      throw 'No se puede abrir la URL del PDF';
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color colorText = Color.fromRGBO(205,255,255, 2.0);
    final Color colorTitle = Color.fromRGBO(12, 183, 242, 2.0);

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
              padding: EdgeInsets.all(25.0),
              child: Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: Colors.white, width: 2.0)),
                            child: Center(
                              child: Text(
                                'P',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 350,
                        ),
                        Column(
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
                                openGitHub();
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
                                openGitlinkedin();
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
                      ]),
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
                        
                        //descripcion mia

                        SizedBox(
                          height: 400,
                        ),
                        //some things  I've build
                        
                        
                      ],
                    ),
                  ],
                ),
              )),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: RotatedBox(
                  quarterTurns: 1,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () async {
                        final Uri params = Uri(
                          scheme: 'mailto',
                          path: 'paulomartinez1999@gmail.com',
                          query:
                              'subject=Asunto del correo&body=Cuerpo del correo',
                        );
                        final String url = params.toString();
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'No se puede abrir la aplicación de correo';
                        }
                      },
                      child: Center(
                        child: Text(
                          'paulomartinez1999@gmail.com',
                          style: GoogleFonts.instrumentSans(
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            color: colorText,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
