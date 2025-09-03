import 'package:flutter_test/flutter_test.dart';

import 'package:string_calculator/string_calculator.dart';

void main() {
  test('should return 0 for an empty string', () {
    expect(Calculator().add(''), 0);
  });

  test('should return integer for a single numbered string', () {
    expect(Calculator().add('1'), 1);
  });

  test('should return sum of two numbers comma separated', () {
    expect(Calculator().add('1,5'), 6);
  });

  test('should return sum of many numbers', () {
    expect(Calculator().add('1,2,3,4'), 10);
  });

  test('should return sum of newlines as delimiter', () {
    expect(Calculator().add('1\n2,3'), 6);
  });

  test('should return sum of custom single-char delimiter', () {
    expect(Calculator().add('//;\n1;2'), 3);
  });
}
