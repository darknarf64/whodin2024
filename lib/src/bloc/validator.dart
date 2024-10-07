/* import 'dart:async';

class Validator {
  final validarNumero = StreamTransformer<String, String>.fromHandlers(
    handleData: (numero, sink) {
      if (double.tryParse(numero) != null) {
        sink.add(numero);
      } else {
        sink.addError('Ingresar solo números válidos');
      }
    },
  );

  final validarTalla = StreamTransformer<String, String>.fromHandlers(
    handleData: (talla, sink) {
      if (double.tryParse(talla) != null && double.tryParse(talla)! >= 45) {
        sink.add(talla);
      } else {
        sink.addError('Sólo números, talla > 44.999');
      }
    },
  );
}
 */

import 'dart:async';

mixin Validator {
  final validarNumero = StreamTransformer<String, String>.fromHandlers(
    handleData: (numero, sink) {
      if (double.tryParse(numero) != null) {
        sink.add(numero);
      } else {
        sink.addError('Ingresar solo números válidos');
      }
    },
  );

  final validarTalla = StreamTransformer<String, String>.fromHandlers(
    handleData: (talla, sink) {
      if (double.tryParse(talla) != null && double.tryParse(talla)! >= 45) {
        sink.add(talla);
      } else {
        sink.addError('Sólo números, talla > 44.999');
      }
    },
  );
}
