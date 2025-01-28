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
    final integers = parts.map(int.parse).where((n) => n <= 1000); // Ignore numbers > 1000
    final negatives = integers.where((n) => n < 0);

    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed: ${negatives.join(',')}');
    }

    return integers.isEmpty ? 0 : integers.reduce((a, b) => a + b);
  }
}
