import 'dart:html_common';

enum TiposBarcos { bote, lancha, submarino, crucero, portaaviones }

class Barco {
  TiposBarcos tipo;
  Barco(this.tipo);
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
