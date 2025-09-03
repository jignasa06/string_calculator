library string_calculator;

class Calculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    final parts = numbers.split(',');
    final ints = parts.map(int.parse).toList();
    return ints.fold(0, (a, b) => a + b);
  }
}
