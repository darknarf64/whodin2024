import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:whodin2/src/bloc/provider.dart';
import 'package:whodin2/src/pages/home_page.dart';

import 'package:whodin2/src/pages/tab2_pages.dart';
import 'package:whodin2/src/pages/tabs_page.dart';
//import 'package:whodin/src/theme/mitema.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'), // English, no country code
          Locale('es', 'ES'), // Spanish, no country code
        ],
        debugShowCheckedModeBanner: false,
        title: 'WhoDin',
        //theme: mitema,
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => TabsPages(),
          'resultados': (BuildContext context) => TabsResultadosPages(),
          'primera': (BuildContext context) => HomePage()
        },
      ),
    );
  }
}
// ingresar comentario