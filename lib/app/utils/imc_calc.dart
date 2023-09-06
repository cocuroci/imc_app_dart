import 'package:imc_app/app/model/imc.dart';

class ImcCalculator {
  ImcCalculator._();
  static Imc calculate(double height, double weight) {
    var result = _calculateValue(height, weight);
    var message = _getMessage(result);
    return Imc(
        result: double.parse(result.toStringAsFixed(2)), message: message);
  }

  static double _calculateValue(double height, double weight) {
    return weight / (height * 2);
  }

  static String _getMessage(double value) {
    switch (value) {
      case <= 16:
        return "Magreza grave";
      case > 16 && <= 17:
        return "Magreza moderada";
      case > 17 && <= 18.5:
        return "Magreza leve";
      case > 18.5 && <= 25:
        return "Saudável";
      case > 26 && <= 30:
        return "Sobrepeso";
      case > 30 && <= 35:
        return "Obesidade grau I";
      case > 35 && <= 40:
        return "Obesidade grau II (severa)";
      case > 40:
        return "Obesidade grau III (mórbida)";
      default:
        return "IMC inválido";
    }
  }
}
