class Nombre {
  late String candidato;
  Nombre(String c) {
    if (RegExp(r'^\d').hasMatch(c)) {
      throw TieneNumerosAlInicioExcepcion();
    }
    if (c.length < longitudMinimaPermitida) {
      throw LongitudMinimaExcepcion();
    }
    if (c.length > longitudMaximaPermitida) {
      throw LongitudMaximaExcepcion();
    }
    if (hasSpecialChar(c)) {
      throw TieneCaracterEspecialExcepcion();
    }
  }

  bool hasSpecialChar(String c) {
    final specialCharRegex = RegExp(r'[^a-zA-Z0-9]');
    return specialCharRegex.hasMatch(c);
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
