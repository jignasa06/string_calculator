import 'package:flutter_test/flutter_test.dart';

import 'package:string_calculator/string_calculator.dart';

void main() {
  test('should return 0 for an empty string', () {
    expect(Calculator().add(''), 0);
  });

  test('should return integer for a single numbered string', () {
    expect(Calculator().add('1'), 1);
  });
}
