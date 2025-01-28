import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  test('Empty string returns 0', () {
    final calculator = StringCalculator();
    expect(calculator.add(""), 0);
  });


}