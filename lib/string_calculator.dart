// lib/string_calculator.dart
class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    final delimiters = [',', '\n'];
    final parts = numbers.split(RegExp(delimiters.join('|')));
    return parts.map(int.parse).reduce((a, b) => a + b);
  }



}
