class EstadoNutricional {
  //Resultados para PESO/EDAD
  String compararPesoEdad(List<double> puntajeZ, double peso) {
    List<double> listadoPuntajesZ = puntajeZ;
    double zPEm3 = listadoPuntajesZ[0];
    double zPEm2 = listadoPuntajesZ[1];
    double zPEMM1 = listadoPuntajesZ[4];
    String estadoPE;

    if (zPEMM1 == 0 && zPEm3 == 0 && zPEm2 == 0) {
      estadoPE = 'No aplica a mayor de 120 meses';
      return estadoPE;
    } else {
      if (peso < zPEm3) {
        estadoPE = "Bajo Peso Severo";
      } else {
        if (peso < zPEm2) {
          estadoPE = "Bajo Peso";
        } else {
          if (peso < zPEMM1) {
            estadoPE = "Normal";
          } else {
            estadoPE = "Ver Nota 2";
          }
        }
      }
    }

    return estadoPE;
  }

//Resultados para Talla Edad
  String compararTallaEdad(List<double> puntajeZ, double talla) {
    List<double> zOptenidos = puntajeZ;
    double zTEm3 = zOptenidos[0];
    double zTEm2 = zOptenidos[1];
    double zTEm1 = zOptenidos[2];
    double zTE3 = zOptenidos[6];
    String estadoTE;
    if (((zTEm3 == 0) && (zTEm2 == 0)) && (zTE3 == 0)) {
      estadoTE = "No aplica a Mayor a 19.0 años";
    } else {
      if (talla < zTEm3) {
        estadoTE = "Talla Baja Severa";
      } else {
        if (talla < zTEm2) {
          estadoTE = "Talla Baja";
        } else {
          if (talla < zTEm1) {
            estadoTE = "Normal (Riesgo)";
          } else {
            if (talla < zTE3) {
              estadoTE = "Normal";
            } else {
              estadoTE = "Ver Nota 1";
            }
          }
        }
      }
    }
    return estadoTE;
  }

  //Resultados para Peso Talla
  String compararPesoTalla(List<double> puntajeZ, double peso) {
    List<double> zOptenidos = puntajeZ;
    double zPTm3 = zOptenidos[0];
    double zPTm2 = zOptenidos[1];
    double zPTm1 = zOptenidos[2];
    double zPTMM1 = zOptenidos[4];
    double zPTMM2 = zOptenidos[5];
    double zPTMM3 = zOptenidos[6];
    String estadoPT;
    if (((((zPTm3 == 0) && (zPTm2 == 0)) && (zPTMM1 == 0)) && (zPTMM2 == 0)) &&
        (zPTMM3 == 0)) {
      estadoPT = "No aplica a Mayor a  110cm de longitud o 120cm de estatura";
    } else {
      if (peso < zPTm3) {
        estadoPT = "Severamente Adelgazado";
      } else {
        if (peso < zPTm2) {
          estadoPT = "Adelgazado";
        } else {
          if (peso < zPTm1) {
            estadoPT = "Posible riesgo de bajo peso";
          } else {
            if (peso < zPTMM1) {
              estadoPT = "Normal";
            } else {
              if (peso < zPTMM2) {
                estadoPT = "Posible riesgo de sobrepeso (Ver nota 3)";
              } else {
                if (peso < zPTMM3) {
                  estadoPT = "Sobrepeso";
                } else {
                  estadoPT = "Obesidad";
                }
              }
            }
          }
        }
      }
    }
    return estadoPT;
  }

  String compararIMCedad(
      List<double> puntajeZ, double pesoZE, double tallaZE, int edadZE) {
    List<double> zOptenidos;
    zOptenidos = puntajeZ;
    tallaZE = (tallaZE / 100);
    double tallaZECuadrado = (tallaZE * tallaZE);
    double imcCal = (pesoZE / tallaZECuadrado);
    imcCal = (imcCal * 10);
    imcCal = imcCal.roundToDouble();
    imcCal = (imcCal / 10);
    double zIMCEm3 = zOptenidos[0];
    double zIMCEm2 = zOptenidos[1];
    double zIMCEm1 = zOptenidos[2];
    double zIMCEMM1 = zOptenidos[4];
    double zIMCEMM2 = zOptenidos[5];
    double zIMCEMM3 = zOptenidos[6];
    String estadoIMCE;
    if (((((zIMCEm3 == 0) && (zIMCEm2 == 0)) && (zIMCEMM1 == 0)) &&
            (zIMCEMM2 == 0)) &&
        (zIMCEMM3 == 0)) {
      estadoIMCE = "No aplica a Mayor a 19.0 años";
    } else {
      if (imcCal < zIMCEm3) {
        estadoIMCE = "Severamente Adelgazado";
      } else {
        if (imcCal < zIMCEm2) {
          estadoIMCE = "Adelgazado";
        } else {
          if (imcCal < zIMCEm1) {
            estadoIMCE = "Posible riesgo de bajo peso";
          } else {
            if (imcCal < zIMCEMM1) {
              estadoIMCE = "Normal";
            } else {
              if (imcCal < zIMCEMM2) {
                estadoIMCE = "Sobrepeso (Menor de 5 años: Riesgo de sobrepeso)";
              } else {
                if (imcCal < zIMCEMM3) {
                  estadoIMCE = "Obesidad (Menor de 5 años: sobrepeso)";
                } else {
                  estadoIMCE = "Obesidad";
                }
              }
            }
          }
        }
      }
    }
    return estadoIMCE;
  }

  String calcularIMC(double pesoZE, double tallaZE) {
    tallaZE = (tallaZE / 100);
    double tallaZECuadrado = (tallaZE * tallaZE);
    double imcCal = (pesoZE / tallaZECuadrado);
    imcCal = (imcCal * 10);
    imcCal = imcCal.roundToDouble();
    imcCal = (imcCal / 10);
    String imcString = imcCal.toString();

    return imcString;
  }
}
