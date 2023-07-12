import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

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
                                "Hi, My name is ",
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
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 16.0),
                                child: Text(
                                    "I am a passionate Software Engineering student about programming and software development. Currently, I am looking for an opportunity" +
                                        " to apply my knowledge and skills in a professional environment and learn from experts in the industry. I am interested in challenging" +
                                        " projects that allow me to grow and develop as a software engineer.",
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
                                'check out my item',
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
                        SizedBox(
                          height: 400.0,
                        ),
                        //descripcion mia
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    '1) About me',
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    speed: Duration(milliseconds: 200),
                                  ),
                                ],
                                repeatForever: true,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding: EdgeInsets.all(30),
                              child: Card(
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam consectetur lectus in efficitur consectetur. Sed eget mi eu dui tristique gravida.',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(14),
                                            bottomRight: Radius.circular(14),
                                          ),
                                          color: Colors.grey,
                                        ),
                                        child: Image.asset(
                                          'assets/imagen2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),

                        SizedBox(
                          height: 400,
                        ),
                        //some things  I've build
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: AnimatedTextKit(
                                animatedTexts: [
                                  TypewriterAnimatedText(
                                    '02)   Some things  I have build',
                                    textStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    speed: Duration(milliseconds: 200),
                                  ),
                                ],
                                repeatForever: true,
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            //1
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Card(
                                color: Colors.transparent,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                          ),
                                          child: CarouselSlider(
                                            items: [
                                              Image.asset('assets/TM1.jpg'),
                                              Image.asset('assets/TM2.jpg'),
                                            ],
                                            options: CarouselOptions(
                                              height: 350,
                                              enlargeCenterPage: true,
                                              autoPlay: true,
                                              aspectRatio: 16 / 9,
                                              autoPlayCurve:
                                                  Curves.fastOutSlowIn,
                                              enableInfiniteScroll: true,
                                              autoPlayAnimationDuration:
                                                  Duration(milliseconds: 800),
                                              viewportFraction: 0.8,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Título del proyecto',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromRGBO(
                                                    12, 183, 242, 2.0),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Descripción del proyecto...',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color.fromRGBO(
                                                    12, 183, 242, 1.0),
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            Container(
                                                child: OutlinedButton(
                                              onPressed: () {
                                                // Acción a realizar cuando se presiona el botón
                                                const url =
                                                    'http://servicios.pelileo.gob.ec/tramites/Departamentos/SecretariaTecnica.php?v=SERVICIOS%20PUBLICOS%20Y%20DESARROLLO%20DE%20LA%20COMUNIDAD';
                                                launch(url);
                                              },
                                              child: Text(
                                                'View more',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white54,
                                                ),
                                              ),
                                              style: OutlinedButton.styleFrom(
                                                side: BorderSide(
                                                  width: 2,
                                                  color: Colors.white24,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 50,
                                                    vertical: 20),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            //other ->2
                            SizedBox(
                              height: 50.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                height: 300,
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Título del proyecto',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color.fromRGBO(
                                                      12, 183, 242, 2.0),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                'Descripción del proyecto...',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Color.fromRGBO(
                                                      12, 183, 242, 1.0),
                                                ),
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                child: OutlinedButton(
                                                  onPressed: () {
                                                    // Acción a realizar cuando se presiona el botón
                                                  },
                                                  child: Text(
                                                    'View more',
                                                    style: TextStyle(
                                                      fontSize: 18.0,
                                                      color: Colors.white54,
                                                    ),
                                                  ),
                                                  style:
                                                      OutlinedButton.styleFrom(
                                                    side: BorderSide(
                                                      width: 2,
                                                      color: Colors.white24,
                                                    ),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 50,
                                                            vertical: 20),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Center(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10),
                                            ),
                                            child: CarouselSlider(
                                              items: [
                                                Image.asset('assets/B1.jpg'),
                                                Image.asset('assets/B2.jpg'),
                                                Image.asset('assets/B3.jpg'),
                                                Image.asset('assets/B4.jpg'),
                                                Image.asset('assets/B5.jpg'),
                                              ],
                                              options: CarouselOptions(
                                                height: 350,
                                                enlargeCenterPage: true,
                                                autoPlay: true,
                                                aspectRatio: 16 / 9,
                                                autoPlayCurve:
                                                    Curves.fastOutSlowIn,
                                                enableInfiniteScroll: true,
                                                autoPlayAnimationDuration:
                                                    Duration(milliseconds: 800),
                                                viewportFraction: 0.8,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            //other ->3
                            SizedBox(
                              height: 20.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Card(
                                color: Colors.transparent,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                          ),
                                          child: CarouselSlider(
                                            items: [
                                              Image.asset('assets/TM1.jpg'),
                                              Image.asset('assets/TM2.jpg'),
                                            ],
                                            options: CarouselOptions(
                                              height: 350,
                                              enlargeCenterPage: true,
                                              autoPlay: true,
                                              aspectRatio: 16 / 9,
                                              autoPlayCurve:
                                                  Curves.fastOutSlowIn,
                                              enableInfiniteScroll: true,
                                              autoPlayAnimationDuration:
                                                  Duration(milliseconds: 800),
                                              viewportFraction: 0.8,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Título del proyecto',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color.fromRGBO(
                                                    12, 183, 242, 2.0),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Descripción del proyecto...',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Color.fromRGBO(
                                                    12, 183, 242, 1.0),
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            Container(
                                                child: OutlinedButton(
                                              onPressed: () {
                                                // Acción a realizar cuando se presiona el botón
                                              },
                                              child: Text(
                                                'View more',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white54,
                                                ),
                                              ),
                                              style: OutlinedButton.styleFrom(
                                                side: BorderSide(
                                                  width: 2,
                                                  color: Colors.white24,
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 50,
                                                    vertical: 20),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                              ),
                                            ))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
