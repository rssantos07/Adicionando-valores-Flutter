import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final curtidasController = CurtidasController();

class CurtidasController extends ChangeNotifier {
  int curtidas = 0;
  bool favorito = false;

  void aumentarCoracao(bool valor) {
    favorito = !favorito;
    if (favorito == true) {
      curtidas++;
    }
    

    notifyListeners();
  }
}
