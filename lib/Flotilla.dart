import 'dart:html_common';

import 'package:tdd_practica/Elemento.dart';
import 'package:tdd_practica/Punto.dart';

enum TiposBarcos { bote, lancha, submarino, crucero, portaaviones }

enum DireccionesHacia { arriba, abajo, izquierda, derecha }

class Barco {
  TiposBarcos tipo;
  final DireccionesHacia direccion;
  final Punto puntoInicial;
  List<Elemento> _elemento = [];
  Barco({
    required this.tipo,
    required this.puntoInicial,
    required this.direccion,
    required List<Elemento> elemento,
  }) : _elemento = elemento;
}

class Flotilla {
  List<Barco> _barcos;
  int get cantidad => _barcos.length;
  Flotilla(List<Barco> this._barcos) {
    if (ahiRepetidos(_barcos)) throw FlotillaCantidadExcepcion;
  }
  bool ahiRepetidos(List<Barco> barcos) {
    return barcos.map((e) => e.tipo).toSet().length != 5;
  }
}

class FlotillaCantidadExcepcion extends Error {}

class FlotillaTipos extends Error {}
