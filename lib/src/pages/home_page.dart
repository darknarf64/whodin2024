import 'package:flutter/material.dart';
import 'package:whodin2/src/clases/edadAniosMesesDias.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> resultadoCalcularEdad = [];
  EdadAniosMesesDias calcularEdad = EdadAniosMesesDias();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          Contenido(),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'home');
            },
          )
        ],
      ),
    );
  }
}

class Contenido extends StatelessWidget {
  const Contenido({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.lightBlue,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: const Image(
            image: AssetImage('assets/images/whodin_home_page.jpg')));
  }
}
