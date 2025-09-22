class Nombre {
  late String candidato;
  Nombre(String c) {
    if (c.length < longitudMinimaPermitida) {
      throw LongitudMinimaExcepcion();
    }
    if (c.length > longitudMaximaPermitida) {
      throw LongitudMaximaExcepcion();
    }

    if (!hasSpecialChar(c)) {
      throw TieneCaracterEspecialExcepcion();
    }
  }

  bool hasSpecialChar(String c) {
    for (int i = 0; i < c.length; i++) {
      String char = c[i];
      if (!RegExp(r'^[a-zA-Z0-9]$').hasMatch(char)) {
        tieneCaracterEspecial = true;
      }
    }
    return false;
  }
}

const longitudMinimaPermitida = 5;
const longitudMaximaPermitida = 15;
bool tieneCaracterEspecial = false;
bool tieneNumerosAlInicio = false;

class TieneNumerosAlInicioExcepcion extends Error {}

class LongitudMinimaExcepcion extends Error {}

class LongitudMaximaExcepcion extends Error {}

class TieneCaracterEspecialExcepcion extends Error {}
