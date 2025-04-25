import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whodin2/src/bloc/provider.dart';

import 'package:whodin2/src/clases/edadAniosMesesDias.dart';
import 'package:whodin2/src/clases/estadoNutricional.dart';
import 'package:whodin2/src/clases/imc_edad.dart';
import 'package:whodin2/src/clases/peso_edad.dart';
import 'package:whodin2/src/clases/peso_talla.dart';
import 'package:whodin2/src/clases/talla_edad.dart';
import 'package:whodin2/src/theme/colores_fondos.dart';

class FechasDatos extends StatefulWidget {
  const FechasDatos({super.key});

  @override
  _FechasDatosState createState() => _FechasDatosState();
}

class _FechasDatosState extends State<FechasDatos> {
  String _fecha = '';
  String _fechaEvaluacion = '';
  String _peso = '';
  String _talla = '';
  int _genero = 1;
  double pesoDouble = 0;
  double tallaDouble = 0;
  late DateTime picketEvaluacion;
  late DateTime picketFecNac;
  bool compararFechas = false;
  int aniosCalculado = 0;
  int mesesCalculado = 0;
  int diasCalculado = 0;
  int _mesestotales = 0;

  //color de fondo
  Fondos fondos = Fondos();

// variables para calcular edad
  String edadAniosMesesDiasCalculado = '';
  List<String> resultadoCalcularEdad = [];
  EdadAniosMesesDias calcularEdad = EdadAniosMesesDias();

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

//textcontroles de los botones de fechas
  final TextEditingController _inputFieldFechaController =
      TextEditingController();

  final TextEditingController _inputFieldFechaEvaluacionController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fecha de nacimiento'),
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: fondos.backgroundDecoration,
              child: _containerblanco(context),
            ),
            _crearListado(context)
          ],
        ));
  }

  Container _containerblanco(BuildContext context) {
    return Container(
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
    );
  }

  _crearListado(BuildContext context) {
    final bloc = Provider.of(context);
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: <Widget>[
        _crearTextoEncabezado('Ingresar las Fechas de Nacimiento y Evaluación'),
        const Divider(),
        _crearFechas(context),
        const Divider(),
        _crearFechasEvaluacion(context),
        const Divider(),
        _crearTextoEncabezado('Datos Antropométricos'),
        const Divider(),
        _crearInputPeso(bloc),
        const Divider(),
        _crearInputTalla(bloc),
        const Divider(),
        _crearRadioListTileSexo(),
        const Divider(),
        _crearBotonCalcular(bloc),
      ],
    );
  }

  //texto de encabezados
  Widget _crearTextoEncabezado(String texto) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      child: Text(
        texto,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }

  //widget de fecha de nacimiento
  Widget _crearFechas(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      child: TextField(
        keyboardType: TextInputType.datetime,
        controller: _inputFieldFechaController,
        enableInteractiveSelection: false,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: 'dd/mm/aaaa',
            labelText: 'Fecha de Nacimiento',
            icon: const Icon(Icons.calendar_today),
            suffixIcon: const Icon(Icons.perm_contact_calendar)),
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          _seleccionarFecha(context);
        },
      ),
    );
  }

  //metodo de seleccionar y actualizar la fecha de nacimiento
  Future _seleccionarFecha(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(3000),
        locale: const Locale('es', 'ES'));

    setState(() {
      _fecha = DateFormat('dd-MM-yyyy').format(picked!);
      _inputFieldFechaController.text = _fecha;
      picketFecNac = picked;
    });
    }

  //widget de fecha de Evaluacion
  Widget _crearFechasEvaluacion(BuildContext context) {
    return Container(
      height: 100,
      alignment: Alignment.center,
      child: TextField(
        keyboardType: TextInputType.datetime,
        controller: _inputFieldFechaEvaluacionController,
        enableInteractiveSelection: false,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: 'dd/mm/aaaa',
            labelText: 'Fecha de Evaluación',
            icon: const Icon(Icons.calendar_today),
            suffixIcon: const Icon(Icons.perm_contact_calendar)),
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          _seleccionarFechaEvaluacion(context);
        },
      ),
    );
  }

  //metodo de selccionar y actulizar la fecha de evaluación
  Future _seleccionarFechaEvaluacion(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(3000),
        locale: const Locale('es', 'ES'));

    setState(() {
      _fechaEvaluacion = DateFormat('dd-MM-yyyy').format(picked!);
      _inputFieldFechaEvaluacionController.text = _fechaEvaluacion;
      picketEvaluacion = picked;
    });
    }

  //crea el input del peso
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
                  errorText:
                      snapshot.hasError ? snapshot.error.toString() : null,
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

  //crea el input de talla
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
                  errorText:
                      snapshot.hasError ? snapshot.error.toString() : null,
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

//botonCalcular
  Widget _crearBotonCalcular(ResultadoBloc bloc) {
    return ElevatedButton(
        onPressed: _revisarLlenadodeFechas()
            ? null
            : () {
                _calcularListAniosMesesDias();
                _calcularMesesTotales(
                    aniosCalculado, mesesCalculado, diasCalculado);
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

  // codigo de calcular edad en años, meses y dias
  void _calcularListAniosMesesDias() {
    String fecNac = _fecha;
    String fecEva = _fechaEvaluacion;
    resultadoCalcularEdad =
        calcularEdad.calcularEdadAniosMesesDias(fecNac, fecEva);
    aniosCalculado = int.parse(resultadoCalcularEdad[0]);
    mesesCalculado = int.parse(resultadoCalcularEdad[1]);
    diasCalculado = int.parse(resultadoCalcularEdad[2]);
    edadAniosMesesDiasCalculado =
        '$aniosCalculado años $mesesCalculado meses $diasCalculado días';
  }

  //activar el boton una vez que se haya llenado todos los campos
  bool _revisarLlenadodeFechas() {
    if (_fecha.isEmpty ||
        _fechaEvaluacion.isEmpty ||
        _peso.isEmpty ||
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
  void _calcularMesesTotales(int anios, int meses, int nDias) {
    int aniosEnMeses = anios * 12;
    int diasEnMeses;
    if (nDias <= 15) {
      diasEnMeses = 0;
    } else {
      diasEnMeses = 1;
    }
    _mesestotales = aniosEnMeses + meses + diasEnMeses;
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
