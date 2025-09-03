library string_calculator;

class Calculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String input = numbers;
    String pattern = r'[,\n]';

    if (numbers.startsWith('//')) {
      final headerEnd = numbers.indexOf('\n');
      final delimiter = numbers.substring(2, headerEnd);
      input = numbers.substring(headerEnd + 1);
      pattern = RegExp.escape(delimiter);
    }

    final parts = input.split(RegExp(pattern));
    final ints = parts.map(int.parse);
    return ints.fold(0, (a, b) => a + b);
  }
}
