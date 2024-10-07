import 'package:flutter/material.dart';
import 'package:whodin2/src/bloc/provider.dart';
import 'package:whodin2/src/theme/colores_fondos.dart';

class ResultadosPages extends StatelessWidget {
  const ResultadosPages({super.key});

  @override
  Widget build(BuildContext context) {
    //color de fondo
    Fondos fondos = Fondos();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Resultados'),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: fondos.backgroundDecoration,
            ),
            Container(
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height * 0.80,
                  width: MediaQuery.of(context).size.width * 0.95,
                ),
              ),
            ),
            _buildListView(context),
          ],
        ));
  }

  ListView _buildListView(BuildContext context) {
    final bloc = Provider.of(context);
    final String edadCalculada = bloc.edadAniosMesesDias;
    final String meses = bloc.mesestotal;
    final String peso = bloc.obtenerPesoFinal;
    final String talla = bloc.obtenerTallaFinal;
    final String imc = bloc.obtenerimcFinal;
    final String resultadoPesoEdad = bloc.obtenerResENpesoEdad;
    final String resultadoTallaEdad = bloc.obtenerResENtallaEdad;
    final String resultadosPesoTalla = bloc.obtenerResENpesoTalla;
    final String resultadosIMCEdad = bloc.obtenerResENimcEdad;

    String pesoST = _redondearaUnDecimal(double.parse(peso)).toString();
    String tallaST = _redondearaUnDecimal(double.parse(talla)).toString();
    String imcST = _redondearaUnDecimal(double.parse(imc)).toString();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: <Widget>[
        Container(
          height: 20,
        ),
        _crearTextoDatos(meses, pesoST, tallaST, imcST),
        Container(
          height: 20,
        ),
        _crearTextoResultados(context, 'Edad Calculada', edadCalculada),
        Container(
          height: 20,
        ),
        _crearTextoResultados(context, 'Talla/Edad', resultadoTallaEdad),
        Container(
          height: 20,
        ),
        _crearTextoResultados(context, 'Peso/Talla', resultadosPesoTalla),
        Container(
          height: 20,
        ),
        _crearTextoResultados(context, 'Peso/Edad', resultadoPesoEdad),
        Container(
          height: 20,
        ),
        _crearTextoResultados(context, 'IMC/Edad', resultadosIMCEdad),
      ],
    );
  }

//Crear las colunas y filas de los resultados segun dx y resultado
  Widget _crearTextoResultados(
      BuildContext context, String titulo1, String resultado) {
    final screenSize = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Container(
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              width: screenSize.width * 0.8,
              height: 30.0,
              //color: Colors.blue,
              child: Center(
                child: Text(
                  titulo1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              )),
          Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              ),
              width: screenSize.width * 0.8,
              height: 30.0,
              //color: Colors.blue,
              child: Center(
                child: Text(
                  resultado,
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              )),
        ],
      ),
    );
  }

//crea la columna y fila de los datos de peso, talla y edad
  Widget _crearTextoDatos(String meses, String peso, String talla, String imc) {
    TextStyle estiloTextoDatos1 = const TextStyle(
      color: Colors.white,
      fontSize: 15,
    );
    TextStyle estiloTextoDatos2 = const TextStyle(
      color: Colors.blue,
      fontSize: 15,
    );
    return Column(
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
                  child: Center(child: Text('IMC', style: estiloTextoDatos1))),
              Expanded(
                  flex: 1,
                  child: Center(child: Text('Meses', style: estiloTextoDatos1)))
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
                  child: Center(child: Text(talla, style: estiloTextoDatos2))),
              Expanded(
                  flex: 1,
                  child: Center(child: Text(imc, style: estiloTextoDatos2))),
              Expanded(
                  flex: 1,
                  child: Center(child: Text(meses, style: estiloTextoDatos2)))
            ],
          ),
        ),
      ],
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
