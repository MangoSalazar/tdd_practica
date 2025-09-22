import 'package:tdd_practica/tdd_practica.dart';
import 'package:test/test.dart';

void main() {
  test('al crear debe marcar creada', () {
    Partida partida = new Partida();
    expect(partida.estado, equals(Estado.creada));
  });
}
