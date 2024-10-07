import 'package:flutter/material.dart';

Widget crearBoton(BuildContext context) {
  return Container(
    height: 50,
    alignment: Alignment.center,
    child: ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, 'resultados');
      },
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          height: 30.0,
          width: 120.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.calculate), Text('Calcular')],
          )),
    ),
  );
}
