import 'package:flutter/material.dart';
import 'package:whodin2/src/bloc/provider.dart';
import 'package:whodin2/src/theme/colores_fondos.dart';

class PuntajeZPage extends StatelessWidget {
  const PuntajeZPage({super.key});

  @override
  Widget build(BuildContext context) {
    Fondos fondos = Fondos();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Puntajes Z'),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: fondos.backgroundDecoration,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white,
                  ),
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width * 0.95,
                ),
              ),
            ),
            _buildListView(context)
          ],
        ));
  }

  ListView _buildListView(BuildContext context) {
    final bloc = Provider.of(context);
    final String peso = bloc.obtenerPesoFinal;
    final String talla = bloc.obtenerTallaFinal;
    final String imc = bloc.obtenerimcFinal;
    final List<double> pesoEdadZ = bloc.obtenerZpesoEdad;
    final List<double> tallaEdadZ = bloc.obtenerZTallaEdad;
    final List<double> pesoTallaZ = bloc.obtenerZPesoTalla;
    final List<double> imcEdadZ = bloc.obtenerZimcEdad;

    String pesoST = _redondearaUnDecimal(double.parse(peso)).toString();
    String tallaST = _redondearaUnDecimal(double.parse(talla)).toString();
    String imcST = _redondearaUnDecimal(double.parse(imc)).toString();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: <Widget>[
        Container(
          height: 10,
        ),
        _crearRowPesoTallaIMC(pesoST, tallaST, imcST),
        Container(
          height: 10,
        ),
        _crearRowResultadosPuntaje('Puntajes Z'),
        Container(
          height: 10,
        ),
        const Divider(),
        _crearRowPuntajesZ('Longitud o talla / Edad (cm)', tallaEdadZ),
        const Divider(),
        _crearRowPuntajesZ('Peso / Edad (Kg)', pesoEdadZ),
        const Divider(),
        _crearRowPuntajesZ('Peso / Longitud o talla (Kg)', pesoTallaZ),
        const Divider(),
        _crearRowZimcPESO('IMC / Edad (Peso Kg)', imcEdadZ, talla),
        Container(
          height: 5.0,
        ),
        _crearRowPuntajesZ('IMC / Edad (Kg/m2)', imcEdadZ),
        const Divider(),
      ],
    );
  }

  //crear las colunas y filas de los datos de peso, talla y edad (superior)
  Widget _crearRowPesoTallaIMC(String peso, String talla, String imc) {
    TextStyle estiloTextoDatos1 = const TextStyle(
      color: Colors.white,
      fontSize: 15,
    );
    TextStyle estiloTextoDatos2 = const TextStyle(
      color: Colors.blue,
      fontSize: 15,
    );
    return Container(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Center(
                        child: Text(
                      'Peso',
                      style: estiloTextoDatos1,
                    ))),
                Expanded(
                    flex: 1,
                    child:
                        Center(child: Text('Talla', style: estiloTextoDatos1))),
                Expanded(
                    flex: 1,
                    child: Center(child: Text('IMC', style: estiloTextoDatos1)))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.lightBlue[50]),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Center(child: Text(peso, style: estiloTextoDatos2))),
                Expanded(
                    flex: 1,
                    child:
                        Center(child: Text(talla, style: estiloTextoDatos2))),
                Expanded(
                    flex: 1,
                    child: Center(child: Text(imc, style: estiloTextoDatos2)))
              ],
            ),
          )
        ],
      ),
    );
  }

  //crea las columnas y filas para los puntajes
  Widget _crearRowResultadosPuntaje(String titulo) {
    TextStyle estiloTextoDatos1 = const TextStyle(
      color: Colors.white,
      fontSize: 15,
    );
    TextStyle estiloTextoDatos2 = const TextStyle(
      color: Colors.black,
      fontSize: 15,
    );

    return Container(
      child: Column(
        children: [
          Container(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  titulo,
                  style: estiloTextoDatos1,
                ),
              )),
          Container(
            decoration: BoxDecoration(color: Colors.lightBlue[50]),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.red),
                        child: Center(
                            child: Text('-3', style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.orange),
                        child: Center(
                            child: Text('-2', style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Center(
                            child: Text('-1', style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Center(
                            child: Text('0', style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Center(
                            child: Text('+1', style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.orange),
                        child: Center(
                            child: Text('+2', style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.red),
                        child: Center(
                            child: Text('+3', style: estiloTextoDatos2)))),
              ],
            ),
          )
        ],
      ),
    );
  }

  //crear Row de puntajes Z
  Widget _crearRowPuntajesZ(String titulo, List<double> puntajesZ) {
    TextStyle estiloTextoDatos1 = const TextStyle(
      color: Colors.white,
      fontSize: 15,
    );
    TextStyle estiloTextoDatos2 = const TextStyle(
      color: Colors.black,
      fontSize: 15,
    );

    final List<double> puntosZ = puntajesZ;
    double zmm3 = puntosZ[0];
    zmm3 = _redondearaUnDecimal(zmm3);
    double zmm2 = puntosZ[1];
    zmm2 = _redondearaUnDecimal(zmm2);
    double zmm1 = puntosZ[2];
    zmm1 = _redondearaUnDecimal(zmm1);
    double z0 = puntosZ[3];
    z0 = _redondearaUnDecimal(z0);
    double zMM1 = puntosZ[4];
    zMM1 = _redondearaUnDecimal(zMM1);
    double zMM2 = puntosZ[5];
    zMM2 = _redondearaUnDecimal(zMM2);
    double zMM3 = puntosZ[6];
    zMM3 = _redondearaUnDecimal(zMM3);

    return Container(
      child: Column(
        children: [
          Container(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  titulo,
                  style: estiloTextoDatos1,
                ),
              )),
          Container(
            decoration: BoxDecoration(color: Colors.lightBlue[50]),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.red),
                        child: Center(
                            child: Text(zmm3.toString(),
                                style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.orange),
                        child: Center(
                            child: Text(zmm2.toString(),
                                style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Center(
                            child: Text(zmm1.toString(),
                                style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Center(
                            child: Text(z0.toString(),
                                style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Center(
                            child: Text(zMM1.toString(),
                                style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.orange),
                        child: Center(
                            child: Text(zMM2.toString(),
                                style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.red),
                        child: Center(
                            child: Text(zMM3.toString(),
                                style: estiloTextoDatos2)))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //crear Row puntajes Z para IMC pero del valor del PESO
  Widget _crearRowZimcPESO(
      String titulo, List<double> puntajesZ, String talla) {
    TextStyle estiloTextoDatos1 = const TextStyle(
      color: Colors.white,
      fontSize: 15,
    );
    TextStyle estiloTextoDatos2 = const TextStyle(
      color: Colors.black,
      fontSize: 15,
    );

    double? tallaDouble = double.tryParse(talla);
    tallaDouble = (tallaDouble! / 100);
    tallaDouble = tallaDouble * tallaDouble;

    final List<double> puntosZ = puntajesZ;
    double zmm3 = puntosZ[0] * tallaDouble;
    zmm3 = _redondearaUnDecimal(zmm3);
    double zmm2 = puntosZ[1] * tallaDouble;
    zmm2 = _redondearaUnDecimal(zmm2);
    double zmm1 = puntosZ[2] * tallaDouble;
    zmm1 = _redondearaUnDecimal(zmm1);
    double z0 = puntosZ[3] * tallaDouble;
    z0 = _redondearaUnDecimal(z0);
    double zMM1 = puntosZ[4] * tallaDouble;
    zMM1 = _redondearaUnDecimal(zMM1);
    double zMM2 = puntosZ[5] * tallaDouble;
    zMM2 = _redondearaUnDecimal(zMM2);
    double zMM3 = puntosZ[6] * tallaDouble;
    zMM3 = _redondearaUnDecimal(zMM3);

    return Container(
      child: Column(
        children: [
          Container(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  titulo,
                  style: estiloTextoDatos1,
                ),
              )),
          Container(
            decoration: BoxDecoration(color: Colors.lightBlue[50]),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.red),
                        child: Center(
                            child: Text(zmm3.toString(),
                                style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.orange),
                        child: Center(
                            child: Text(zmm2.toString(),
                                style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Center(
                            child: Text(zmm1.toString(),
                                style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Center(
                            child: Text(z0.toString(),
                                style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Center(
                            child: Text(zMM1.toString(),
                                style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.orange),
                        child: Center(
                            child: Text(zMM2.toString(),
                                style: estiloTextoDatos2)))),
                Expanded(
                    flex: 1,
                    child: Container(
                        decoration: const BoxDecoration(color: Colors.red),
                        child: Center(
                            child: Text(zMM3.toString(),
                                style: estiloTextoDatos2)))),
              ],
            ),
          )
        ],
      ),
    );
  }

  double _redondearaUnDecimal(double numeroAredondear) {
    double numero = numeroAredondear;
    numero = numero * 10;
    numero = numero.roundToDouble();
    numero = numero / 10;
    return numero;
  }
}
