class Nombre {
  late String candidato;
  Nombre(String c) {
    if (c.length < longitudMinimaPermitida) {
      throw LongitudMinimaExcepcion();
    }
    if (c.length > longitudMaximaPermitida) {
      throw LongitudMaximaExcepcion();
    }
    for (int i = 0; i < c.length; i++) {
      String char = c[i];
      if (!RegExp(r'^[a-zA-Z0-9]$').hasMatch(char)) {
        tieneCaracterEspecial = true;
      }
    }

    if (!tieneCaracterEspecial) {
      throw TieneCaracterEspecialExcepcion();
    }
  }
}

const longitudMinimaPermitida = 5;
const longitudMaximaPermitida = 15;
bool tieneCaracterEspecial = false;

class LongitudMinimaExcepcion extends Error {}

class LongitudMaximaExcepcion extends Error {}

class TieneCaracterEspecialExcepcion extends Error {}
