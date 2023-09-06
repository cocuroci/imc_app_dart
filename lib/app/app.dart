import 'dart:convert';
import 'dart:io';
import 'package:imc_app/app/model/imc.dart';
import 'package:imc_app/app/utils/imc_calc.dart';

import 'model/person.dart';
import 'exceptions/double_exception.dart';
import 'exceptions/name_exception.dart';
import 'utils/validators.dart';

void runApp() {
  print("Bem vindo ao app de IMC");

  String validName;
  double validHeight;
  double validWeight;

  try {
    print("Digite seu nome:");
    validName = Validators.validateName(stdin.readLineSync(encoding: utf8));

    print("Digite sua altura:");
    validHeight = Validators.validateHeight(stdin.readLineSync(encoding: utf8));

    print("Digite sua peso:");
    validWeight = Validators.validateWeight(stdin.readLineSync(encoding: utf8));
  } on NameException {
    print("Nome inválido");
    exit(0);
  } on DoubleException catch (e) {
    print(e.message);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  Person person =
      Person(name: validName, height: validHeight, weight: validWeight);

  Imc imc = ImcCalculator.calculate(person.height, person.weight);
  print("${imc.message}, valor: ${imc.result.toStringAsFixed(2)}");
}
