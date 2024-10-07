/* import 'package:flutter/material.dart';
import 'package:whodin/src/bloc/resultado_bloc.dart';
export 'package:whodin/src/bloc/resultado_bloc.dart';

class Provider extends InheritedWidget {
  static Provider _instancia;

  factory Provider({Key key, Widget child}) {
    if (_instancia == null) {
      _instancia = new Provider._internal(key: key, child: child);
    }
    return _instancia;
  }
  Provider._internal({Key key, Widget child}) : super(key: key, child: child);

  final resultadosBloc = ResultadoBloc();

  @override
  bool updateShouldNotify(Provider oldWidget) {
    return true;
  }

  static ResultadoBloc of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<Provider>()
        .resultadosBloc;
  }
} */

import 'package:flutter/material.dart';
import 'package:whodin2/src/bloc/resultado_bloc.dart';
export 'package:whodin2/src/bloc/resultado_bloc.dart';

class Provider extends InheritedWidget {
  static Provider? _instancia;

  factory Provider({Key? key, required Widget child}) {
    _instancia ??= new Provider._internal(key: key, child: child);
    return _instancia!;
  }

  Provider._internal({super.key, required super.child});

  final resultadosBloc = ResultadoBloc();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static ResultadoBloc of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<Provider>()!
        .resultadosBloc;
  }
}
