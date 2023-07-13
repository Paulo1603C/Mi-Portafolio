import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const PortafolioApp());

class PortafolioApp extends StatelessWidget {
  const PortafolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portafolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 16),
        ),
      ),
      home: const PortafolioPage(),
    );
  }
}

class PortafolioPage extends StatelessWidget {
  const PortafolioPage({Key? key}) : super(key: key);

  //descarga un pdf
  final pdfUrl = 'https://drive.google.com/file/d/1stuybcAxlaO4CVOUM4TaQ2KGGzyw9Gb3/view?usp=sharing';
  void downloadPDF() async {
    if (await canLaunch(pdfUrl)) {
      await launch(pdfUrl);
    } else {
      throw 'No se puede abrir la URL del PDF';
    }
  }

  //enviar correo
  void sendEmail() async {
    //open gmail
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'paulomartinez1999@gmail.com',
      query: 'subject=Asunto del correo&body=Cuerpo del correo',
    );
    final String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se puede abrir la aplicación de correo';
    }
  }

  //send whatsApp
  void openWhatsApp() async {
    const phoneNumber = '0999065428'; // Reemplaza con tu número de teléfono
    const message = '¡Hola! Estoy interesado en contactarte.'; // Reemplaza con el mensaje que deseas enviar
    final url = 'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'No se pudo abrir WhatsApp';
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
    const Color colorText = Color.fromRGBO(173, 216, 230, 1.0);
    const Color colorTitle = Color.fromRGBO(174, 214, 241, 1.0);
    final TextStyle miTextStyle = GoogleFonts.chivoMono(
      fontSize: 16,
      color: colorText,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Martech Solutions",
          style: GoogleFonts.saira(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(0, 157, 113, 2.0),
      ),
      body: Container(
        color: const Color.fromRGBO(37, 36, 64, 1.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white, width: 2.0)),
                        child: Center(
                          child: Text(
                            'MS',
                            style: GoogleFonts.saira(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                    //  const SizedBox(height: 350 ),
                    const Spacer(),
                    IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.github,
                        size: 30,
                      ),
                      color: Colors.white,
                      onPressed: () {
                        // Acción al hacer clic en el icono de GitHub
                        openGitHub();
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.linkedin,
                        size: 30,
                      ),
                      color: Colors.white,
                      onPressed: () {
                        // Acción al hacer clic en el icono de LinkedIn
                        openGitlinkedin();
                      },
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    IconButton(
                      icon: const FaIcon(
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
            Expanded(
              child: SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.all(100.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        //cada seccion se manera por column -> dentro iran controlados por contendores
                        //presentacion
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi, My name is ", style: GoogleFonts.roboto(color: Colors.white38, fontSize: 20)),
                            const SizedBox(
                              height: 15.0,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  'Paulo Martínez',
                                  textStyle: GoogleFonts.alkatra(
                                    fontSize: 50,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  speed: const Duration(milliseconds: 200),
                                ),
                              ],
                              repeatForever: true,
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                  "I am a passionate Software Engineering student about programming and software development. Currently, I am looking for an opportunity to apply my knowledge and skills in a professional environment and learn from experts in the industry. I am interested in challenging projects that allow me to grow and develop as a software engineer.",
                                  style: GoogleFonts.chivoMono(color: colorText, fontSize: 15)),
                            ),
                            const SizedBox(height: 15.0),
                            OutlinedButton(
                              onPressed: () {
                                // Acción a realizar cuando se presiona el botón
                                downloadPDF();
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                  width: 2,
                                  color: Colors.white30,
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                'check out my item',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white24,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 400.0,
                        ),
                        //descripcion mia
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '1) About me',
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  speed: const Duration(milliseconds: 200),
                                ),
                              ],
                              repeatForever: true,
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: Card(
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 3,
                                      child: Padding(
                                        padding: const EdgeInsets.all(60),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Hello! My name is Paulo and I enjoy creating things that I am passionate about. My main focus is creating amazing mobile apps with attractive design and powerful functionality. In addition, I am also in charge of developing impressive websites"
                                              "Here are some technologies I have been working with recently:",
                                              style: miTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "•   Development of mobile applications on iOS and Android platforms using Java Android and Flutter. ",
                                              style: miTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "•   Website development using HTML, CSS and JavaScript, as well as frameworks such as Angular. ",
                                              style: miTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "•   Development of desktop sites using java and C#. ",
                                              style: miTextStyle,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "If you are interested in collaborating on an exciting project or have any ideas you would like to discuss, I would be happy to hear from you!",
                                              style: miTextStyle,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(14),
                                                bottomRight: Radius.circular(14),
                                              ),
                                              color: Colors.grey,
                                            ),
                                            child: Image.asset(
                                              'assets/Paulo.jpg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),

                        const SizedBox(
                          height: 200,
                        ),
                        //some things  I've build
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '02)   Some things  I have build',
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  speed: const Duration(milliseconds: 200),
                                ),
                              ],
                              repeatForever: true,
                            ),
                            const SizedBox(
                              height: 15.0,
                            ),
                            //1
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Card(
                                color: Colors.transparent,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 3,
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
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
                                              autoPlayCurve: Curves.fastOutSlowIn,
                                              enableInfiniteScroll: true,
                                              autoPlayAnimationDuration: const Duration(milliseconds: 800),
                                              viewportFraction: 0.8,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Procedure consultation system',
                                              style: GoogleFonts.shantellSans(
                                                fontSize: 24,
                                                color: colorTitle,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Text(
                                                'Application that allows users to make inquiries and obtain information on administrative procedures and paperwork related to the municipal sphere. Through the application, users can access a variety of services, such as checking the status of ongoing procedures, obtaining information on requirements and necessary documentation, and accessing forms and requests related to municipal procedures.',
                                                style: GoogleFonts.chivoMono(
                                                  fontSize: 15,
                                                  color: colorText,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(height: 16),
                                            OutlinedButton(
                                              onPressed: () {
                                                // Acción a realizar cuando se presiona el botón
                                                const url = 'http://servicios.pelileo.gob.ec/tramites/index.php';
                                                launch(url);
                                              },
                                              style: OutlinedButton.styleFrom(
                                                side: const BorderSide(
                                                  width: 2,
                                                  color: Colors.white24,
                                                ),
                                                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                              ),
                                              child: const Text(
                                                'View more',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white54,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            //other ->2
                            const SizedBox(
                              height: 50.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Card(
                                color: Colors.transparent,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'System for property inquiries',
                                              style: GoogleFonts.shantellSans(
                                                fontSize: 24,
                                                color: colorTitle,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'This tool provides users with the ability to query and obtain relevant details about different types of assets and real estate that you have registered in your name.',
                                              style: miTextStyle,
                                            ),
                                            const SizedBox(height: 16),
                                            OutlinedButton(
                                              onPressed: () {
                                                // Acción a realizar cuando se presiona el botón
                                                const url = 'https://github.com/Paulo1603C/Sistema-para-consulta-de-bienes';
                                                launch(url);  
                                              },
                                              style: OutlinedButton.styleFrom(
                                                side: const BorderSide(
                                                  width: 2,
                                                  color: Colors.white24,
                                                ),
                                                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                              ),
                                              child: const Text(
                                                'View more',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white54,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 3,
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                          ),
                                          child: CarouselSlider(
                                            items: [
                                              Image.asset('assets/SM1.jpg'),
                                              Image.asset('assets/SM2.jpg'),
                                            ],
                                            options: CarouselOptions(
                                              height: 350,
                                              enlargeCenterPage: true,
                                              autoPlay: true,
                                              aspectRatio: 16 / 9,
                                              autoPlayCurve: Curves.fastOutSlowIn,
                                              enableInfiniteScroll: true,
                                              autoPlayAnimationDuration: const Duration(milliseconds: 800),
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

                            //other ->3
                            const SizedBox(
                              height: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Card(
                                color: Colors.transparent,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      flex: 3,
                                      child: Center(
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
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
                                              autoPlayCurve: Curves.fastOutSlowIn,
                                              enableInfiniteScroll: true,
                                              autoPlayAnimationDuration: const Duration(milliseconds: 800),
                                              viewportFraction: 0.8,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Bus management application',
                                              style: GoogleFonts.shantellSans(
                                                fontSize: 24,
                                                color: colorTitle,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'It allows users to purchase bus tickets conveniently and efficiently. This app gives users the ability to search for available routes, select times and seats, make payments, and receive e-tickets right on their devices.',
                                              style: miTextStyle,
                                            ),
                                            const SizedBox(height: 16),
                                            OutlinedButton(
                                              onPressed: () {
                                                // Acción a realizar cuando se presiona el botón
                                                const url = "https://github.com/Paulo1603C/Sistema-Web-movil-para-gestion-de-Buses";
                                                launch(url);
                                              },
                                              style: OutlinedButton.styleFrom(
                                                side: const BorderSide(
                                                  width: 2,
                                                  color: Colors.white24,
                                                ),
                                                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                              ),
                                              child: const Text(
                                                'View more',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.white54,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 200,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '3)  Technology with which I have worked',
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  speed: const Duration(milliseconds: 200),
                                ),
                              ],
                              repeatForever: true,
                            ),

                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Card(
                                color: Colors.transparent,
                                child: Row(
                                  //contecdra tanto backend como fronend
                                  children: [
                                    //frontend
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Desarrollo Frontend',
                                            style: miTextStyle,
                                          ),
                                          const SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Text(
                                                'HTML5',
                                                style: miTextStyle,
                                              ),
                                              const SizedBox(width: 10),
                                              const Expanded(
                                                child: LinearProgressIndicator(
                                                  value: 0.88,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                '88%',
                                                style: miTextStyle,
                                              ),
                                            ],
                                          ),
                                          //other
                                          const SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Text(
                                                'CSS3',
                                                style: miTextStyle,
                                              ),
                                              const SizedBox(width: 10),
                                              const Expanded(
                                                child: LinearProgressIndicator(
                                                  value: 0.88,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                '88%',
                                                style: miTextStyle,
                                              ),
                                            ],
                                          ),
                                          //other
                                          const SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Text(
                                                'JS',
                                                style: miTextStyle,
                                              ),
                                              const SizedBox(width: 10),
                                              const Expanded(
                                                child: LinearProgressIndicator(
                                                  value: 0.88,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                '88%',
                                                style: miTextStyle,
                                              ),
                                            ],
                                          ),
                                          //other
                                          const SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Text(
                                                'FLUTTER',
                                                style: miTextStyle,
                                              ),
                                              const SizedBox(width: 10),
                                              const Expanded(
                                                child: LinearProgressIndicator(
                                                  value: 0.88,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                '88%',
                                                style: miTextStyle,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Desarrollo Backend',
                                            style: miTextStyle,
                                          ),
                                          const SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Text(
                                                'PHP',
                                                style: miTextStyle,
                                              ),
                                              const SizedBox(width: 10),
                                              const Expanded(
                                                child: LinearProgressIndicator(
                                                  value: 0.88,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text('88%', style: miTextStyle),
                                            ],
                                          ),
                                          //other
                                          Row(
                                            children: [
                                              Text(
                                                'C#',
                                                style: miTextStyle,
                                              ),
                                              const SizedBox(width: 10),
                                              const Expanded(
                                                child: LinearProgressIndicator(
                                                  value: 0.60,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                '60%',
                                                style: miTextStyle,
                                              ),
                                            ],
                                          ),
                                          //other
                                          Row(
                                            children: [
                                              Text(
                                                'MySQL',
                                                style: miTextStyle,
                                              ),
                                              const SizedBox(width: 10),
                                              const Expanded(
                                                child: LinearProgressIndicator(
                                                  value: 0.90,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                '90%',
                                                style: miTextStyle,
                                              ),
                                            ],
                                          ),
                                          //other
                                          Row(
                                            children: [
                                              Text(
                                                'SqlServer',
                                                style: miTextStyle,
                                              ),
                                              const SizedBox(width: 10),
                                              const Expanded(
                                                child: LinearProgressIndicator(
                                                  value: 0.90,
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                '90%',
                                                style: miTextStyle,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            ),
                            //Contact

                            const SizedBox(
                              height: 200,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  '4)  Contact',
                                  textStyle: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  speed: const Duration(milliseconds: 200),
                                ),
                              ],
                              repeatForever: true,
                            ),
                            const SizedBox(height: 15),
                            Center(
                              //padding: EdgeInsets.all(20),
                              child: SizedBox(
                                width: 700,
                                child: Column(
                                  children: [
                                    Text(
                                      "Get In Touch",
                                      style: GoogleFonts.chivoMono(color: colorTitle, fontSize: 25),
                                    ),
                                    const SizedBox(height: 15),
                                    Text(
                                      "Although I'm currently looking for any new opportunities, my inbox is always open. Whether you have a question or just want to say hi, I'll try my best to get to you as soon as possible.",
                                      style: miTextStyle,
                                    ),
                                    const SizedBox(height: 15),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                // Abrir WhatsApp
                                                openWhatsApp();
                                              },
                                              icon: const FaIcon(FontAwesomeIcons.whatsapp, size: 50),
                                              color: Colors.white,
                                            ),
                                            const SizedBox(width: 20), // Espacio entre los iconos
                                            IconButton(
                                              onPressed: () async {
                                                // Abrir Gmail
                                                sendEmail();
                                              },
                                              icon: const FaIcon(FontAwesomeIcons.envelope, size: 50),
                                              color: Colors.white,
                                            ),
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

                        //footer
                        const SizedBox(
                          height: 200,
                          child: Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                        ),
                        Container(
                          height: 80,
                          color: Colors.transparent,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '© 2023 ( Paulo Martínez ) => { My Web page. All rights reserved }',
                                style: TextStyle(fontSize: 14, color: colorTitle, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Contact: paulomartinez1999@gmail.com | phone: 0999065428',
                                style: TextStyle(fontSize: 12, color: colorText, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ),
            SizedBox(
              width: 150,
              child: RotatedBox(
                quarterTurns: 1,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: sendEmail,
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
          ],
        ),
      ),
    );
  }
}
