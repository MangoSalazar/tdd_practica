import 'dart:math';

class Punto {
  final int columna;
  final int fila;

  Punto({required this.columna, required this.fila});

  int distancia(Punto otro) {
    int dColumna = columna - otro.columna;
    int dFila = fila - otro.fila;
    num hipotenusa = pow(dColumna, 2) + pow(dFila, 2);
    num raiz = sqrt(hipotenusa);
    return raiz.toInt();
  }
}
