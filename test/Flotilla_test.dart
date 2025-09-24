import 'package:tdd_practica/Elemento.dart';
import 'package:tdd_practica/Punto.dart';
import 'package:test/test.dart';
import 'package:tdd_practica/Flotilla.dart';

void main() {
  test('Debe tener 5 tipos de barcos', () async {
    var numBarcos = [
      Barco(
        tipo: TiposBarcos.bote,
        puntoInicial: Punto(columna: 1, fila: 1),
        direccion: DireccionesHacia.izquierda,
        elemento: 1,
      ),
    ];
    expect(() => Flotilla(numBarcos), throwsA(isA<FlotillaTipos>()));
  });
}
