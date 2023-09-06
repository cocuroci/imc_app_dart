import 'package:imc_app/app/exceptions/double_exception.dart';
import 'package:imc_app/app/exceptions/name_exception.dart';
import 'package:imc_app/app/utils/validators.dart';
import 'package:test/test.dart';

void main() {
  group("Name validations", () {
    test(
        "Validade if name is null",
        () => expect(() => Validators.validateName(null),
            throwsA(isA<NameException>())));

    test(
        "Validade if name is empty",
        () => expect(
            () => Validators.validateName(""), throwsA(isA<NameException>())));

    test("Validade if name is valid",
        () => expect(Validators.validateName("André"), equals("André")));
  });

  group("Height validations", () {
    test(
        "Validade if height is null",
        () => expect(() => Validators.validateHeight(null),
            throwsA(isA<DoubleException>())));

    test(
        "Validade if height is valid",
        () => expect(() => Validators.validateHeight("d"),
            throwsA(isA<DoubleException>())));

    test(
        "Validade if height less than zero",
        () => expect(() => Validators.validateHeight("-1"),
            throwsA(isA<DoubleException>())));

    test(
        "Validade if height equal than zero",
        () => expect(() => Validators.validateHeight("0"),
            throwsA(isA<DoubleException>())));

    test("Validade if height is valid",
        () => expect(Validators.validateHeight("10"), equals(10.0)));
  });

  group("Weight validations", () {
    test(
        "Validade if weight is null",
        () => expect(() => Validators.validateWeight(null),
            throwsA(isA<DoubleException>())));

    test(
        "Validade if weight is valid",
        () => expect(() => Validators.validateWeight("d"),
            throwsA(isA<DoubleException>())));

    test(
        "Validade if weight less than zero",
        () => expect(() => Validators.validateWeight("-1"),
            throwsA(isA<DoubleException>())));

    test(
        "Validade if weight equal than zero",
        () => expect(() => Validators.validateWeight("0"),
            throwsA(isA<DoubleException>())));

    test("Validade if weight is valid",
        () => expect(Validators.validateWeight("11"), equals(11.0)));
  });
}
