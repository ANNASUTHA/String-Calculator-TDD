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
    final integers = parts.map(int.parse);
    final negatives = integers.where((n) => n < 0);

    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed: ${negatives.join(',')}');
    }

    return integers.reduce((a, b) => a + b);
  }




}
