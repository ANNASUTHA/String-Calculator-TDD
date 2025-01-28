// lib/string_calculator.dart
class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String delimiter = ',|\n';
    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = parts[0].substring(2);
      numbers = parts[1];
    }

    final parts = numbers.split(RegExp(delimiter));
    return parts.map(int.parse).reduce((a, b) => a + b);
  }




}
