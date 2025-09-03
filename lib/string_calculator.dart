library string_calculator;

class Calculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    final parts = numbers.split(RegExp(r'[,\n]'));
    final ints = parts.map(int.parse);
    return ints.fold(0, (a, b) => a + b);
  }
}
