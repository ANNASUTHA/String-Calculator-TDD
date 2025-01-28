# string_calculator

String Calculator TDD Project

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Features
Add numbers provided as a comma-separated string.
Handle an empty string as input ("" returns 0).
Support for multiple numbers in a single input.
Allow custom delimiters (e.g., "//;\n1;2" sums numbers with ; as the delimiter).
Handle numbers separated by newlines (\n) in addition to commas.
Ignore numbers greater than 1000 ("2,1001" returns 2).
Throw an exception when negative numbers are provided, listing all negative numbers in the message.

lib/
string_calculator.dart // Implementation of the String Calculator
test/
string_calculator_test.dart // Unit tests for the String Calculator

Prerequisites
Install Flutter and ensure Dart is configured on your system.
Setup
Clone this repository:


git clone <repository_url>
cd <repository_name>


Install dependencies:

flutter pub get

Usage
String Calculator Implementation
The main function of the calculator is add, which accepts a string input and returns an integer sum:

dart
Copy
Edit
final calculator = StringCalculator();

// Example Inputs:
print(calculator.add(""));             // Output: 0
print(calculator.add("1,2,3"));        // Output: 6
print(calculator.add("//;\n1;2;3"));   // Output: 6
print(calculator.add("2,1001"));       // Output: 2

Running Tests
Run the following command to execute the test suite:
flutter test


TDD Approach
Start with the simplest test:
Test an empty string ("").
Incrementally add functionality:
Add support for one and two numbers.
Handle multiple numbers, custom delimiters, and newlines.
Add constraints like ignoring numbers > 1000 and throwing exceptions for negatives.
Refactor after every passing test:
Ensure the code remains clean and efficient without altering functionality.


Test Cases
Covered Scenarios:
Empty string ("") → Returns 0.
Single number ("1") → Returns 1.
Two numbers ("1,2") → Returns 3.
Multiple numbers ("1,2,3") → Returns 6.
Newline as a delimiter ("1\n2,3") → Returns 6.
Custom delimiter ("//;\n1;2") → Returns 3.
Numbers > 1000 ignored ("2,1001") → Returns 2.
Negative numbers throw exceptions ("1,-2,-3") → Throws with message: negative numbers not allowed: -2,-3.


Future Improvements
Extend the functionality to support additional mathematical operations (e.g., subtraction, multiplication).
Introduce support for floating-point numbers.


**_~~~~Author :
Annasutha Selvakumar
Flutter Developer with 5 years of experience.**_~~~~

