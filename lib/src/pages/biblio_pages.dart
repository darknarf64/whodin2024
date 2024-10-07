import 'package:flutter/material.dart';
import 'package:whodin2/src/theme/colores_fondos.dart';

class BliblioPage extends StatelessWidget {
  const BliblioPage({super.key});

  @override
  Widget build(BuildContext context) {
    Fondos fondos = Fondos();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Indicadores de crecimiento y bibliografía'),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: fondos.backgroundDecoration,
            ),
            // Positioned(
            //   top: 9,
            //   left: 10,
            //   child: Container(
            //     alignment: Alignment.topCenter,
            //     child: Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
            //         color: Colors.lightBlue[50],
            //       ),
            //       height: MediaQuery.of(context).size.height * 0.85,
            //       width: MediaQuery.of(context).size.width * 0.95,
            //     ),
            //   ),
            // ),
            _buildBody(fondos),
          ],
        ));
  }

  Container _buildBody(Fondos fondos) {
    return Container(
      // decoration: fondos.backgroundDecoration,
      child: ListView(padding: const EdgeInsets.all(10), children: [
        _crearTextoImagen('INDICADORES DE CRECIMIENTO'),
        const Divider(),
        _crearTextoImagen('Indicador Longitud o talla / Edad'),
        _crearImagen('assets/images/whodin_talla_edad.jpg'),
        const Divider(),
        _crearTextoImagen('Indicador Peso / Edad'),
        _crearImagen('assets/images/whodin_peso_edad.jpg'),
        const Divider(),
        _crearTextoImagen('Indicador Peso / Longitud o talla'),
        _crearImagen('assets/images/whodin_peso_talla.jpg'),
        const Divider(),
        _crearTextoImagen('Indicador IMC / Edad'),
        _crearImagen('assets/images/whodin_imc_edad.jpg'),
        const Divider(),
        _crearColumnaTexto()
      ]),
    );
  }

  Center _crearTextoImagen(String titulo) {
    return Center(
      child: Text(
        titulo,
        style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _crearImagen(String ruta) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: Image(image: AssetImage(ruta)),
    );
  }

  Widget _crearColumnaTexto() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: const Column(
        children: [
          Text(
              'Patrones de crecimiento disponibles en: https://www.who.int/tools/child-growth-standards/standards'),
          Divider(),
          Text(
              'Indicadores de crecimiento disponibles en: https://www.who.int/childgrowth/training/c_interpretando.pdf'),
          Divider()
        ],
      ),
    );
  }
}
