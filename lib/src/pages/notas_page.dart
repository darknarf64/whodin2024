import 'package:flutter/material.dart';
import 'package:whodin2/src/theme/colores_fondos.dart';

class NotasPage extends StatelessWidget {
  final Fondos fondos = Fondos();

  NotasPage({super.key});
  @override
  Widget build(BuildContext context) {
    const String nota1 =
        'NOTA 1: Un niño en este rango es muy alto. Una estatura alta en raras ocasiones es un problema, a menos que sea un caso extremo que indique la presencia de desordenes endocrinos como un tumor productor de hormona del crecimiento. Si usted sospecha un desorden endocrino, refiera al niño en este rango para una evaluación médica (por ejemplo, si padres con una estatura normal tienen un niño excesivamente alto para su edad).';
    const String nota2 =
        'NOTA 2: Un niño cuyo peso para la edad cae en este rango puede tener un problema de crecimiento, pero esto puede evaluarse mejor con peso para la longitud/ talla o IMC para la edad.';
    const String nota3 =
        'NOTA 3: Un punto marcado por encima de 1 muestra un posible riesgo. Una tendencia hacia la línea de puntuación z+2 muestra un riesgo definitivo.';
    const String nota4 =
        'NOTA 4: Es posible que un niño con retardo baja talla o baja talla severa desarrolle sobrepeso.';
    const String nota5 =
        'NOTA 5: Esta condición es mencionada como peso muy bajo en los módulos de capacitación de AIEPI (Atención Integral de las Enfermedades Prevalentes de la Infancia, Capacitación en servicio, OMS, Ginebra 1997).';

    return Scaffold(
        appBar: AppBar(
          title: const Text('Notas'),
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
                  height: MediaQuery.of(context).size.height * 0.85,
                  width: MediaQuery.of(context).size.width * 0.95,
                ),
              ),
            ),
            _buildListView(nota1, nota2, nota3, nota4, nota5),
          ],
        ));
  }

  ListView _buildListView(
      String nota1, String nota2, String nota3, String nota4, String nota5) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: [
        Container(
          height: 10.0,
        ),
        Text(
          nota1,
          textAlign: TextAlign.justify,
        ),
        const Divider(),
        Text(nota2, textAlign: TextAlign.justify),
        const Divider(),
        Text(nota3, textAlign: TextAlign.justify),
        const Divider(),
        Text(nota4, textAlign: TextAlign.justify),
        const Divider(),
        Text(nota5, textAlign: TextAlign.justify),
        const Divider(),
      ],
    );
  }
}
