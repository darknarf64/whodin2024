import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:whodin2/src/pages/notas_page.dart';
import 'package:whodin2/src/pages/puntajesZ_page.dart';
import 'package:whodin2/src/pages/resultado_page.dart';

class TabsResultadosPages extends StatelessWidget {
  const TabsResultadosPages({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NavegacionModel(),
      child: Scaffold(
        body: _Paginas(),
        bottomNavigationBar: _Navegacion(),
      ),
    );
  }
}

class _Paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegacionModel>(context);
    return PageView(
      controller: navegacionModel.pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        ResultadosPages(),
        PuntajeZPage(),
        NotasPage(),
      ],
    );
  }
}

class _Navegacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<_NavegacionModel>(context);

    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      unselectedItemColor: Colors.black54,
      selectedItemColor: Colors.white,
      currentIndex: navegacionModel.paginaActual,
      onTap: (i) => navegacionModel.paginaActual = i,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment), label: 'Resultados'),
        BottomNavigationBarItem(
            icon: Icon(Icons.analytics), label: 'Puntajes Z'),
        BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: 'Notas')
      ],
    );
  }
}

class _NavegacionModel with ChangeNotifier {
  int _paginaActual = 0;
  final PageController _pageController = PageController(initialPage: 0);

  int get paginaActual => _paginaActual;
  set paginaActual(int valor) {
    _paginaActual = valor;
    _pageController.animateToPage(valor,
        duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
    notifyListeners();
  }

  PageController get pageController => _pageController;
}
