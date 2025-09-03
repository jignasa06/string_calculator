library string_calculator;

class Calculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    if (!numbers.contains(',') && !numbers.contains('\n')) {
      return int.parse(numbers);
    }
    return 0;
  }
}
