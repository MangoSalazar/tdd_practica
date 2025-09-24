import 'package:test/test.dart';
import 'package:tdd_practica/Flotilla.dart';

void main() {
  test('Debe tener 5 tipos de barcos', () async {
    var numBarcos = [Barco(TiposBarcos.bote), Barco(TiposBarcos.lancha)];
    expect(() => Flotilla(numBarcos), throwsA(isA<FlotillaTipos>()));
  });
}
