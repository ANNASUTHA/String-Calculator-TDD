import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  test('Empty string returns 0', () {
    final calculator = StringCalculator();
    expect(calculator.add(""), 0);
  });

  test('Single number returns the number itself', () {
    final calculator = StringCalculator();
    expect(calculator.add("1"), 1);
  });

  test('Two numbers separated by a comma return their sum', () {
    final calculator = StringCalculator();
    expect(calculator.add("1,5"), 6);
  });
  test('Handle multiple numbers', () {
    final calculator = StringCalculator();
    expect(calculator.add("1,2,3,4"), 10);
  });
  test('New lines as delimiters', () {
    final calculator = StringCalculator();
    expect(calculator.add("1\n2,3"), 6);
  });
  test('Support custom delimiters', () {
    final calculator = StringCalculator();
    expect(calculator.add("//;\n1;2"), 3);
  });
  test('Throw exception for negative numbers', () {
    final calculator = StringCalculator();
    expect(() => calculator.add("1,-2,3"), throwsA(contains("negative numbers not allowed: -2")));
  });

  // TODO Tried Numbers bigger than 1000 should be ignored, so adding 2 + 1001 = 2
  test('Numbers greater than 1000 should be ignored', () {
    final calculator = StringCalculator();
    expect(calculator.add("2,1001"), 2);
  });
  test('Ignore numbers greater than 1000 in a larger list', () {
    final calculator = StringCalculator();
    expect(calculator.add("2,1001,6,2000,7"), 15); // Only 2, 6, and 7 are summed.
  });

}