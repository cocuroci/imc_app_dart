import '../exceptions/double_exception.dart';
import '../exceptions/name_exception.dart';

class Validators {
  Validators._();
  static String validateName(String? name) {
    String currentName = name ?? "";

    if (currentName.isEmpty) {
      throw NameException();
    }

    return currentName;
  }

  static double validateHeight(String? height) {
    try {
      var result = double.parse(height ?? "");

      if (result <= 0) {
        throw DoubleException(message: "Altura inválida");
      }

      return result;
    } catch (e) {
      throw DoubleException(message: "Altura inválida");
    }
  }

  static double validateWeight(String? weight) {
    try {
      var result = double.parse(weight ?? "");

      if (result <= 0) {
        throw DoubleException(message: "Peso inválido");
      }

      return result;
    } catch (e) {
      throw DoubleException(message: "Peso inválido");
    }
  }
}
