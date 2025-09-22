import 'package:test/test.dart';
import 'package:tdd_practica/Nombre.dart';

void main() {
  test('Debe tener un minimo de longitud', () {
    expect(() => Nombre(''), throwsA(isA<LongitudMinimaExcepcion>()));
  });
  test('Exedio el maximo de caracteres', () {
    expect(
      () => Nombre('PACHECOLOPEZGAELEDUARDOLEANDROVALLE1314'),
      throwsA(isA<LongitudMaximaExcepcion>()),
    );
  });
  test('Tiene caracteres especiales gg papa', () {
    expect(
      () => Nombre('FGMC2004-*'),
      throwsA(isA<TieneCaracterEspecialExcepcion>()),
    );
  });
  test('tiene numeros al inicio', () {
    expect(
      () => Nombre('2004fgmc'),
      throwsA(isA<TieneNumerosAlInicioExcepcion>()),
    );
  });
  test('salio todobien hehehehehe', () {
    expect(
      () => Nombre('Mango2004'),
      throwsA(isA<TieneCaracterEspecialExcepcion>()),
    );
  });
}
