import 'package:flutter/material.dart';
import 'package:whodin2/src/bloc/provider.dart';
import 'package:whodin2/src/clases/estadoNutricional.dart';
import 'package:whodin2/src/clases/imc_edad.dart';
import 'package:whodin2/src/clases/peso_edad.dart';
import 'package:whodin2/src/clases/peso_talla.dart';
import 'package:whodin2/src/clases/talla_edad.dart';
import 'package:whodin2/src/theme/colores_fondos.dart';

class EdadDatos extends StatefulWidget {
  const EdadDatos({super.key});

  @override
  _EdadDatosState createState() => _EdadDatosState();
}

class _EdadDatosState extends State<EdadDatos> {
  int anos = 0;
  int meses = 0;
  String _peso = '';
  String _talla = '';
  int _genero = 1;

  //para el calculo
  double pesoDouble = 0;
  double tallaDouble = 0;
  // DateTime picketEvaluacion;
  // DateTime picketFecNac;
  // bool compararFechas = false;
  // int aniosCalculado = 0;
  // int mesesCalculado = 0;
  // int diasCalculado = 0;
  int _mesestotales = 0;

// variables para calcular edad
  String edadAniosMesesDiasCalculado = '';

  //instancia de estadonutricional para calcular resultados
  EstadoNutricional estadoNutricional = EstadoNutricional();

  //variables para resultados PesoEdad
  final PesoEdad _pesoEdad = PesoEdad();
  late List<double> _resultadoPesoEdadZ;
  late String _resultadoENpesoEdad;

  //variables para resultado TallaEdad
  final TallaEdad _tallaEdad = TallaEdad();
  late List<double> _resultadosTallaEdadZ;
  late String _resultadosENtallaEdad;

  //variables para resultado PesoTalla
  final PesoTalla _pesoTalla = PesoTalla();
  late List<double> _resultadosPesoTallaZ;
  late String _resultadoENpesoTalla;

  //variables para resultado IMC Edad
  final IMCEdad _imcEdad = IMCEdad();
  late List<double> _resultadosIMCedadZ;
  late String _resultadosENimcEdad;
  late String imc;

  //color de fondo
  Fondos fondos = Fondos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edad años y meses'),
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
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width * 0.95,
                ),
              ),
            ),
            _buildListView(context),
          ],
        ));
  }

//crear ListView
  ListView _buildListView(BuildContext context) {
    final bloc = Provider.of(context);

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: <Widget>[
        _crearTextoEncabezado('Ingresar edad en años y meses'),
        const Divider(),
        _crearRowAnos(anos),
        const Divider(),
        _crearRowMeses(meses),
        const Divider(),
        _crearTextoEncabezado('Datos Antropométricos'),
        const Divider(),
        _crearInputPeso(bloc),
        const Divider(),
        _crearInputTalla(bloc),
        const Divider(),
        _crearTextoEncabezado('Sexo'),
        const Divider(),
        _crearRadioListTileSexo(),
        const Divider(),
        _crearBotonCalcular(bloc),
      ],
    );
  }

//Crea los textos de encabezados
  Widget _crearTextoEncabezado(String texto) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      child: Text(
        texto,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }

//Crea la fila de los años
  Widget _crearRowAnos(int ano) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(flex: 2, child: Text('Años')),
          ElevatedButton(
              onPressed: () {
                _botonmenosanos();
              },
              child: const Icon(Icons.keyboard_arrow_left_rounded)),
          Expanded(flex: 1, child: Center(child: Text(ano.toString()))),
          ElevatedButton(
              onPressed: () {
                _botonmasanos();
              },
              child: const Icon(Icons.keyboard_arrow_right_rounded))
        ],
      ),
    );
  }

  //Crea la fila de los meses
  Widget _crearRowMeses(int meses) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(flex: 2, child: Text('Meses')),
          ElevatedButton(
              onPressed: () {
                _botonmenosmeses();
              },
              child: const Icon(Icons.keyboard_arrow_left_rounded)),
          Expanded(flex: 1, child: Center(child: Text(meses.toString()))),
          ElevatedButton(
              onPressed: () {
                _botonmasmeses();
              },
              child: const Icon(Icons.keyboard_arrow_right_rounded))
        ],
      ),
    );
  }

  //Crea el Input del Peso
  Widget _crearInputPeso(ResultadoBloc bloc) {
    return StreamBuilder(
        stream: bloc.pesoStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            height: 100,
            alignment: Alignment.center,
            child: TextField(
              keyboardType: TextInputType.number,
              autofocus: false,
              decoration: InputDecoration(
                  errorText: snapshot.hasError
                      ? snapshot.error.toString()
                      : null, //snapshot.error,
                  counterText: snapshot.data,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: '99.9',
                  labelText: 'Peso',
                  helperText: 'Peso en Kg',
                  icon: const Icon(Icons.account_balance_wallet),
                  suffixIcon: const Icon(Icons.person)),
              onChanged: (value) {
                bloc.cambiarPeso(value);
                setState(() {
                  _peso = value;
                });
              },
            ),
          );
        });
  }

  //Crea el input de la talla
  Widget _crearInputTalla(ResultadoBloc bloc) {
    return StreamBuilder(
        stream: bloc.tallaStream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return Container(
            height: 100,
            alignment: Alignment.center,
            child: TextField(
              keyboardType: TextInputType.number,
              autofocus: false,
              decoration: InputDecoration(
                  counterText: snapshot.data,
                  errorText: snapshot.hasError
                      ? snapshot.error.toString()
                      : null, // snapshot.error,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: '199.9',
                  labelText: 'Talla',
                  helperText: 'Talla en cm',
                  icon: const Icon(Icons.account_balance_wallet),
                  suffixIcon: const Icon(Icons.person)),
              onChanged: (value) {
                bloc.cambiarTalla(value);
                setState(() {
                  _talla = value;
                });
              },
            ),
          );
        });
  }

  //crea los botones de sexo
  Widget _crearRadioListTileSexo() {
    // int? value = 1;
    return Container(
      child: Column(
        children: <Widget>[
          RadioListTile(
              value: 1,
              groupValue: _genero,
              title: const Text('Masculino'),
              onChanged: (int? value) {
                setState(() {
                  _genero = value!;
                });
              }),
          RadioListTile(
              value: 2,
              groupValue: _genero,
              title: const Text('Femenino'),
              onChanged: (int? value) {
                setState(() {
                  _genero = value!;
                });
              })
        ],
      ),
    );
  }

  //funciones del boton menos años
  void _botonmenosanos() {
    setState(() {
      if (anos == 0) {
        anos = 19;
        meses = 0;
      } else {
        anos = anos - 1;
      }
    });
  }

  void _botonmasanos() {
    setState(() {
      if (anos == 19) {
        anos = 0;
      } else {
        if (anos == 18) {
          anos = 19;
          meses = 0;
        } else {
          anos = anos + 1;
        }
      }
    });
  }

  void _botonmenosmeses() {
    setState(() {
      if (anos == 19) {
        meses = 0;
      } else {
        if (meses == 0) {
          meses = 11;
        } else {
          meses = meses - 1;
        }
      }
    });
  }

  void _botonmasmeses() {
    setState(() {
      if (anos == 19) {
        meses = 0;
      } else {
        if (meses == 11) {
          meses = 0;
        } else {
          meses = meses + 1;
        }
      }
    });
  }

  Widget _crearBotonCalcular(ResultadoBloc bloc) {
    return ElevatedButton(
        onPressed: _revisarLlenadodeFechas()
            ? null
            : () {
                _calcularMesesTotales(anos, meses);
                edadAniosMesesDiasCalculado =
                    '$anos años, $meses meses, 0 días';
                _crearListaZpesoEdad(_mesestotales, _genero);
                _pasarTallayPesoADouble();
                _resultadoENpesoEdad = estadoNutricional.compararPesoEdad(
                    _resultadoPesoEdadZ, pesoDouble);
                _crearListaZtallaEdadd(_mesestotales, _genero);
                _resultadosENtallaEdad = estadoNutricional.compararTallaEdad(
                    _resultadosTallaEdadZ, tallaDouble);
                _crarListaZPesoTalla(tallaDouble, _mesestotales, _genero);
                _resultadoENpesoTalla = estadoNutricional.compararPesoTalla(
                    _resultadosPesoTallaZ, pesoDouble);
                _crearListaZIMCedad(_mesestotales, _genero);
                _resultadosENimcEdad = estadoNutricional.compararIMCedad(
                    _resultadosIMCedadZ,
                    pesoDouble,
                    tallaDouble,
                    _mesestotales);
                imc = estadoNutricional.calcularIMC(pesoDouble, tallaDouble);

                bloc.cambiarEdadAniosMesesDias(edadAniosMesesDiasCalculado);
                bloc.cambiarMesesTotales(_mesestotales.toString());
                bloc.cambiarPesoFinal(_peso);
                bloc.cambiarTallaFinal(_talla);
                bloc.cambiarimcFinal(imc.toString());
                bloc.cambiarResENpesoEdad(_resultadoENpesoEdad);
                bloc.cambiarResENtallaEdad(_resultadosENtallaEdad);
                bloc.cambiarResENpesoTalla(_resultadoENpesoTalla);
                bloc.cambiarResENimcEdad(_resultadosENimcEdad);
                bloc.cambiarZpesoEdad(_resultadoPesoEdadZ);
                bloc.cambiarZTallaEdad(_resultadosTallaEdadZ);
                bloc.cambiarZPesoTalla(_resultadosPesoTallaZ);
                bloc.cambiarZimcEdad(_resultadosIMCedadZ);

                FocusScope.of(context).requestFocus(FocusNode());

                Navigator.pushNamed(context, 'resultados');
              },
        child: const Text('Calcular'));
  }

  //activar el boton una vez que se haya llenado todos los campos
  bool _revisarLlenadodeFechas() {
    if (_peso.isEmpty ||
        _talla.isEmpty ||
        double.tryParse(_peso) == null ||
        double.tryParse(_talla) == null) {
      return true;
    } else {
      return false;
    }
  }

  //crea la lista de puntajes Z por peso y edad
  _crearListaZpesoEdad(int meses, int sexo) {
    if (meses > 120) {
      _resultadoPesoEdadZ = [0, 0, 0, 0, 0, 0, 0];
    } else {
      if (sexo == 2) {
        _resultadoPesoEdadZ = _pesoEdad.encontrarPuntajeZFem(meses)!;
      } else {
        _resultadoPesoEdadZ = _pesoEdad.encontrarPuntajeZMasc(meses)!;
      }
    }
  }

  //calcula los meses totales de edad
  void _calcularMesesTotales(int anios, int meses) {
    int aniosEnMeses = anios * 12;
    _mesestotales = aniosEnMeses + meses;
  }

  //pasar el peso y la talla escritos a doubles
  _pasarTallayPesoADouble() {
    pesoDouble = double.tryParse(_peso)!;
    tallaDouble = double.tryParse(_talla)!;
  }

  //crea la lista de puntajes Z por talla y edad
  _crearListaZtallaEdadd(int meses, int sexo) {
    if (meses > 228) {
      _resultadosTallaEdadZ = [0, 0, 0, 0, 0, 0, 0];
    } else {
      if (sexo == 2) {
        _resultadosTallaEdadZ = _tallaEdad.encontrarPuntajeZFem(meses)!;
      } else {
        _resultadosTallaEdadZ = _tallaEdad.encontrarPuntajeZMasc(meses)!;
      }
    }
  }

  //Crea la lista de puntajes Z por peso y talla
  _crarListaZPesoTalla(double talla, int meses, int sexo) {
    if (meses < 24 && talla > 110) {
      _resultadosPesoTallaZ = [0, 0, 0, 0, 0, 0, 0];
    } else {
      if (talla > 120) {
        _resultadosPesoTallaZ = [0, 0, 0, 0, 0, 0, 0];
      } else {
        if (sexo == 2) {
          _resultadosPesoTallaZ =
              _pesoTalla.encontrarPuntajeZFem(talla, meses)!;
        } else {
          _resultadosPesoTallaZ =
              _pesoTalla.encontrarPuntajeZMasc(talla, meses)!;
        }
      }
    }
  }

  // crear lista de puntajes Z de IMC edad
  _crearListaZIMCedad(int meses, int sexo) {
    if (meses > 228) {
      _resultadosTallaEdadZ = [0, 0, 0, 0, 0, 0, 0];
    } else {
      if (sexo == 2) {
        _resultadosIMCedadZ = _imcEdad.encontrarPuntajeZFem(meses)!;
      } else {
        _resultadosIMCedadZ = _imcEdad.encontrarPuntajeZMasc(meses)!;
      }
    }
  }
}
