import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:whodin2/src/pages/biblio_pages.dart';
import 'package:whodin2/src/pages/edad_pages.dart';
import 'package:whodin2/src/pages/fechas_page.dart';

class TabsPages extends StatelessWidget {
  const TabsPages({super.key});

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
        FechasDatos(),
        EdadDatos(),
        BliblioPage(),
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
      //Color.fromRGBO(0, 135, 255, 1),
      unselectedItemColor: Colors.black54,
      selectedItemColor: Colors.white,
      currentIndex: navegacionModel.paginaActual,
      onTap: (i) => navegacionModel.paginaActual = i,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_rounded),
          label: 'Por Fechas',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.date_range_outlined), label: 'Por Edad'),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_books), label: 'Bibliografía')
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
