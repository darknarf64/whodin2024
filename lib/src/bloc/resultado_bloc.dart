import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'validator.dart';

class ResultadoBloc with Validator {
  final _pesoController = BehaviorSubject<String>();
  final _tallaController = BehaviorSubject<String>();
  final _edadAniosMesesDiasCalculado = BehaviorSubject<String>();
  final _mesestotalesString = BehaviorSubject<String>();
  final _pesoFinal = BehaviorSubject<String>();
  final _tallaFinal = BehaviorSubject<String>();
  final _imcFinal = BehaviorSubject<String>();
  final _resultadoENpesoEdad = BehaviorSubject<String>();
  final _resultadosENtallaEdad = BehaviorSubject<String>();
  final _resultadoENpesoTalla = BehaviorSubject<String>();
  final _resultadosENimcEdad = BehaviorSubject<String>();
  final _zPesoEdad = BehaviorSubject<List<double>>();
  final _zTallaEdad = BehaviorSubject<List<double>>();
  final _zPesoTalla = BehaviorSubject<List<double>>();
  final _zIMCedad = BehaviorSubject<List<double>>();

  //Recuperar los datos del Stream
  Stream<String> get pesoStream =>
      _pesoController.stream.transform(validarNumero);
  Stream<String> get tallaStream =>
      _tallaController.stream.transform(validarTalla);
  Stream<String> get edadAniosMesesDiasCalculado =>
      _edadAniosMesesDiasCalculado.stream;
  Stream<String> get mesestotales => _mesestotalesString.stream;
  Stream<String> get pesoFinal => _pesoFinal.stream;
  Stream<String> get tallaFinal => _tallaFinal.stream;
  Stream<String> get imcFinal => _imcFinal.stream;
  Stream<String> get resultadoENpesoEdad => _resultadoENpesoEdad.stream;
  Stream<String> get resultadosENtallaEdad => _resultadosENtallaEdad.stream;
  Stream<String> get resultadoENpesoTalla => _resultadoENpesoTalla.stream;
  Stream<String> get resultadosENimcEdad => _resultadosENimcEdad.stream;
  Stream<List<double>> get zPesoEdad => _zPesoEdad.stream;
  Stream<List<double>> get zTallaEdad => _zTallaEdad.stream;
  Stream<List<double>> get zPesoTalla => _zPesoTalla.stream;
  Stream<List<double>> get zImcEdad => _zIMCedad.stream;

//validar los datos obtenidos
  Stream<bool> get formValidStream =>
      Rx.combineLatest2(pesoStream, tallaStream, (p, t) => true);

  //insertar valores al stream
  Function(String) get cambiarPeso => _pesoController.sink.add;
  Function(String) get cambiarTalla => _tallaController.sink.add;
  Function(String) get cambiarEdadAniosMesesDias =>
      _edadAniosMesesDiasCalculado.sink.add;
  Function(String) get cambiarMesesTotales => _mesestotalesString.sink.add;
  Function(String) get cambiarPesoFinal => _pesoFinal.sink.add;
  Function(String) get cambiarTallaFinal => _tallaFinal.sink.add;
  Function(String) get cambiarimcFinal => _imcFinal.sink.add;
  Function(String) get cambiarResENpesoEdad => _resultadoENpesoEdad.sink.add;
  Function(String) get cambiarResENtallaEdad => _resultadosENtallaEdad.sink.add;
  Function(String) get cambiarResENpesoTalla => _resultadoENpesoTalla.sink.add;
  Function(String) get cambiarResENimcEdad => _resultadosENimcEdad.sink.add;
  Function(List<double> event) get cambiarZpesoEdad => _zPesoEdad.sink.add;
  Function(List<double> event) get cambiarZTallaEdad => _zTallaEdad.sink.add;
  Function(List<double> event) get cambiarZPesoTalla => _zPesoTalla.sink.add;
  Function(List<double> event) get cambiarZimcEdad => _zIMCedad.sink.add;

  //obtener el ultimo valor ingresado a los streams
  String get peso => _pesoController.value;
  String get talla => _tallaController.value;
  String get edadAniosMesesDias => _edadAniosMesesDiasCalculado.value;
  String get mesestotal => _mesestotalesString.value;
  String get obtenerPesoFinal => _pesoFinal.value;
  String get obtenerTallaFinal => _tallaFinal.value;
  String get obtenerimcFinal => _imcFinal.value;
  String get obtenerResENpesoEdad => _resultadoENpesoEdad.value;
  String get obtenerResENtallaEdad => _resultadosENtallaEdad.value;
  String get obtenerResENpesoTalla => _resultadoENpesoTalla.value;
  String get obtenerResENimcEdad => _resultadosENimcEdad.value;
  dynamic get obtenerZpesoEdad => _zPesoEdad.value;
  dynamic get obtenerZTallaEdad => _zTallaEdad.value;
  dynamic get obtenerZPesoTalla => _zPesoTalla.value;
  dynamic get obtenerZimcEdad => _zIMCedad.value;

  void dispose() {
    _pesoController.close();
    _tallaController.close();
    _edadAniosMesesDiasCalculado.close();
    _mesestotalesString.close();
    _pesoFinal.close();
    _tallaFinal.close();
    _imcFinal.close();
    _resultadoENpesoEdad.close();
    _resultadosENtallaEdad.close();
    _resultadoENpesoTalla.close();
    _resultadosENimcEdad.close();
    _zPesoEdad.close();
    _zTallaEdad.close();
    _zPesoTalla.close();
    _zIMCedad.close();
  }
}
