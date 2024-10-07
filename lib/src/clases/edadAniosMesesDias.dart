class EdadAniosMesesDias {
  // String fecNac;
  // String fecEva;
  bool compararFechas = false;
  List<String> aniosMesesDias = [];

  List<String> calcularEdadAniosMesesDias(
      String fechaNacimient, String fechaEvaluacio) {
    if (fechaNacimient.isEmpty || fechaEvaluacio.isEmpty) {
      return ['0', '0', '0'];
    } else {
      List<String> aFecNAc = fechaNacimient.split("-");
      int diaFecNac = int.parse(aFecNAc[0]);
      int mesFecNac = int.parse(aFecNAc[1]);
      int anioFecNac = int.parse(aFecNAc[2]);
      List<String> aFecEva = fechaEvaluacio.split("-");
      int diaFecEva = int.parse(aFecEva[0]);
      int mesFecEva = int.parse(aFecEva[1]);
      int anioFecEva = int.parse(aFecEva[2]);
      int b = 0;
      int dias;
      int mes;
      int anios;
      int meses;
      mes = (mesFecNac - 1);
      List<String> edadCal = [];
      if (mes == 2) {
        if (((anioFecEva % 4) == 0) &&
            (((anioFecEva % 100) != 0) || ((anioFecEva % 400) == 0))) {
          b = 29;
        } else {
          b = 28;
        }
      } else {
        if (mes <= 7) {
          if (mes == 0) {
            b = 31;
          } else {
            if ((mes % 2) == 0) {
              b = 30;
            } else {
              b = 31;
            }
          }
        } else {
          if (mes > 7) {
            if ((mes % 2) == 0) {
              b = 31;
            } else {
              b = 30;
            }
          }
        }
      }
      int difAnios = (anioFecEva - anioFecNac);
      int difMeses = (mesFecEva - mesFecNac);
      int difDias = (diaFecEva - diaFecNac);
      if (difAnios > 0) {
        compararFechas = false;
      } else {
        if ((difAnios == 0) && (difMeses > 0)) {
          compararFechas = false;
        } else {
          if (((difAnios == 0) && (difMeses == 0)) && (difDias >= 0)) {
            compararFechas = false;
          } else {
            compararFechas = true;
          }
        }
      }
      if (compararFechas) {
        edadCal.add('0');
        edadCal.add('0');
        edadCal.add('0');
        return edadCal;
      } else {
        if (diaFecEva < diaFecNac) {
          dias = ((diaFecEva + b) - diaFecNac);
          if (mesFecEva <= mesFecNac) {
            meses = (((mesFecEva - 1) + 12) - mesFecNac);
            anios = ((anioFecEva - 1) - anioFecNac);
          } else {
            meses = ((mesFecEva - 1) - mesFecNac);
            anios = (anioFecEva - anioFecNac);
          }
        } else {
          dias = (diaFecEva - diaFecNac);
          if (mesFecEva < mesFecNac) {
            meses = ((mesFecEva + 12) - mesFecNac);
            anios = ((anioFecEva - 1) - anioFecNac);
          } else {
            meses = (mesFecEva - mesFecNac);
            anios = (anioFecEva - anioFecNac);
          }
        }
        edadCal.add(anios.toString());
        edadCal.add(meses.toString());
        edadCal.add(dias.toString());
        // print(edadCal);
        return edadCal;
      }
      //return edadCal;
    }
  }
}
