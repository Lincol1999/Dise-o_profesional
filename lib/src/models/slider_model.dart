import 'package:flutter/material.dart';

class SliderModel with ChangeNotifier {
  double _currentPage = 0; //Pagina actual

  double get currentPage => this._currentPage;

  set currentPage(double pagina) {
    this._currentPage = pagina;
    print(pagina);
    notifyListeners(); //Notifica a los widget en que pagina estamos
  }
}
