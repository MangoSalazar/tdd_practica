import 'dart:html_common';

import 'Elemento.dart';
import 'Punto.dart';

enum TiposBarcos { bote, lancha, submarino, crucero, portaaviones }

enum DireccionesHacia { arriba, abajo, izquierda, derecha }

class Barco {
  TiposBarcos tipo;
  final DireccionesHacia direccion;
  final Punto puntoInicial;
  List<Elemento> _elementos = [];
  List<Elemento> get elementos => _elementos;
  Barco({
    required this.tipo,
    required this.puntoInicial,
    required this.direccion,
  }) {
    int cuantasVeces = mapaTamanos[tipo]!;
    int columna = puntoInicial.columna;
    int fila = puntoInicial.fila;
    while (cuantasVeces > 0) {
      _elementos.add(Elemento(punto: Punto(columna: columna, fila: fila)));

      columna = columna + dColumna[direccion]!;
      fila = fila + dFila[direccion]!;
      cuantasVeces--;
    }
  }
}

var mapaTamanos = {
  TiposBarcos.bote: 1,
  TiposBarcos.lancha: 2,
  TiposBarcos.submarino: 3,
  TiposBarcos.crucero: 4,
  TiposBarcos.portaaviones: 5,
};
var dFila = {
  DireccionesHacia.arriba: -1,
  DireccionesHacia.abajo: 1,
  DireccionesHacia.izquierda: 0,
  DireccionesHacia.derecha: 0,
};

var dColumna = {
  DireccionesHacia.arriba: 0,
  DireccionesHacia.abajo: 0,
  DireccionesHacia.izquierda: -1,
  DireccionesHacia.derecha: 1,
};

class Flotilla {
  List<Barco> _barcos;
  int get cantidad => _barcos.length;
  Flotilla(this._barcos) {
    if (cantidad != 5) throw FlotillaCantidadExcepcion();
    if (hayRepetidos(_barcos)) throw FlotillaTipos();
  }
  
  bool hayRepetidos(List<Barco> barcos) {
    return barcos.map((barco) => barco.tipo).toSet().length != barcos.length;
  }
}
bool estaDentroDelTablero(Barco barco, {int min = 1, int max = 10}) {
  for (final elemento in barco.elementos) {
    final punto = elemento.punto;   
    final bool estaFuera = 
        punto.fila < min || punto.fila > max || punto.columna < min || punto.columna > max;
    if (estaFuera) {
      return false; 
    }
  }
  return true;
}
class FlotillaCantidadExcepcion extends Error {}

class FlotillaTipos extends Error {}

class barcoPosicionExcepcion extends Error {}

/*
  Flotilla(this._barcos) {
    if (_barcos.length != 5) throw FlotillaCantidadExcepcion;
    if (!hayRepetidos(_barcos)) throw FlotillaTipos;
  }

  bool hayRepetidos(List<Barco> barcos) {
    List<String> tiposRepetidos = [];
    for (var i = 0; i < barcos.length - 1; i++) {
      tiposRepetidos[i] = barcos[i].tipo.toString();
    }
    if ((tiposRepetidos.toSet().toList()) != 5) return true;
    return false;
  }
  */
