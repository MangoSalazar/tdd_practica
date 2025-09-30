import 'package:tdd_practica/Punto.dart';
import 'package:test/test.dart';
import 'package:tdd_practica/Flotilla.dart';

void main() {
  var barcosIncorrectos = [
    Barco(
      tipo: TiposBarcos.bote,
      puntoInicial: Punto(columna: 1, fila: 1),
      direccion: DireccionesHacia.derecha,
    ),
    Barco(
      tipo: TiposBarcos.lancha,
      puntoInicial: Punto(columna: 2, fila: 1),
      direccion: DireccionesHacia.derecha,
    ),
    Barco(
      tipo: TiposBarcos.submarino,
      puntoInicial: Punto(columna: 3, fila: 1),
      direccion: DireccionesHacia.derecha,
    ),
    Barco(
      tipo: TiposBarcos.crucero,
      puntoInicial: Punto(columna: 4, fila: 1),
      direccion: DireccionesHacia.derecha,
    ),
    Barco(
      tipo: TiposBarcos.crucero,
      puntoInicial: Punto(columna: 4, fila: 1),
      direccion: DireccionesHacia.derecha,
    ),
  ];
  var barcosCorrectos = [
    Barco(
      tipo: TiposBarcos.bote,
      puntoInicial: Punto(columna: 1, fila: 1),
      direccion: DireccionesHacia.izquierda,
    ),
    Barco(
      tipo: TiposBarcos.lancha,
      puntoInicial: Punto(columna: 2, fila: 1),
      direccion: DireccionesHacia.izquierda,
    ),
    Barco(
      tipo: TiposBarcos.submarino,
      puntoInicial: Punto(columna: 3, fila: 1),
      direccion: DireccionesHacia.izquierda,
    ),
    Barco(
      tipo: TiposBarcos.crucero,
      puntoInicial: Punto(columna: 4, fila: 1),
      direccion: DireccionesHacia.izquierda,
    ),
    Barco(
      tipo: TiposBarcos.portaaviones,
      puntoInicial: Punto(columna: 5, fila: 1),
      direccion: DireccionesHacia.izquierda,
    ),
  ];
  test('Tiene menos de 5 barcos', () {
    expect(
      () => Flotilla(barcosIncorrectos),
      throwsA(isA<FlotillaCantidadExcepcion>()),
    );
  });
  test('Tiene 5 barcos', () {
    expect(
      () => Flotilla(barcosCorrectos),
      throwsA(isA<FlotillaCantidadExcepcion>()),
    );
  });
  test('Tiene menos de 5 tipos de barcos', () {
    expect(() => Flotilla(barcosIncorrectos), throwsA(isA<FlotillaTipos>()));
  });
}
