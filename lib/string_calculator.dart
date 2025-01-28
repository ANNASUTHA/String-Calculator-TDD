// lib/string_calculator.dart
class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    return int.parse(numbers); // Handles a single number
  }

}
