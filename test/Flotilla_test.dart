import 'package:test/test.dart';
import 'package:tdd_practica/Flotilla.dart';

void main() {
  test('Debe tener 5 tipos de barcos', () async {
    Flotilla flotilla = Flotilla([
      Barco(TiposBarcos.bote),
      Barco(TiposBarcos.lancha),
    ]);
    expect(() => flotilla, throwsA(isA<FlotillaTipos>()));
  });
}
