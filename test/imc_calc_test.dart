import 'package:imc_app/app/model/imc.dart';
import 'package:imc_app/app/utils/imc_calc.dart';
import 'package:test/test.dart';

void main() {
  test("imc message should magreza grave", () {
    var sut = ImcCalculator.calculate(1.67, 50);
    var expected = Imc(result: 14.97, message: "Magreza grave");
    expect(sut, equals(expected));
  });

  test("imc message should magreza moderada", () {
    var sut = ImcCalculator.calculate(1.67, 55);
    var expected = Imc(result: 16.47, message: "Magreza moderada");
    expect(sut, equals(expected));
  });

  test("imc message should magreza leve", () {
    var sut = ImcCalculator.calculate(1.67, 57);
    var expected = Imc(result: 17.07, message: "Magreza leve");
    expect(sut, equals(expected));
  });

  test("imc message should saudável", () {
    var sut = ImcCalculator.calculate(1.67, 66);
    var expected = Imc(result: 19.76, message: "Saudável");
    expect(sut, equals(expected));
  });

  test("imc message should sobrepeso", () {
    var sut = ImcCalculator.calculate(1.67, 90);
    var expected = Imc(result: 26.95, message: "Sobrepeso");
    expect(sut, equals(expected));
  });

  test("imc message should obesidade grau I", () {
    var sut = ImcCalculator.calculate(1.67, 110);
    var expected = Imc(result: 32.93, message: "Obesidade grau I");
    expect(sut, equals(expected));
  });

  test("imc message should obesidade grau II (severa)", () {
    var sut = ImcCalculator.calculate(1.67, 120);
    var expected = Imc(result: 35.93, message: "Obesidade grau II (severa)");
    expect(sut, equals(expected));
  });

  test("imc message should obesidade grau III (mórbida)", () {
    var sut = ImcCalculator.calculate(1.67, 140);
    var expected = Imc(result: 41.92, message: "Obesidade grau III (mórbida)");
    expect(sut, equals(expected));
  });
}
