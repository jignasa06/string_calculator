library string_calculator;

class Calculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String input = numbers;
    String delimiter = ',';
    String pattern = r'[,\n]';

    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      delimiter = parts[0].substring(2); // get delimiter after //
      input = parts.sublist(1).join('\n'); // rest is numbers
    }

    input = input.replaceAll('\n', delimiter == ',' ? ',' : delimiter);
    final parts = input.split(delimiter);

    List<int> numberList = [];

    for (var part in parts) {
      if (part.trim().isEmpty) continue; // ignore empty values
      try {
        numberList.add(int.parse(part.trim()));
      } on FormatException {
        throw FormatException(
            'Invalid number format: "$part" in input "$numbers"');
      }
    }
    final negatives = numberList.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw FormatException('Negatives not allowed: ${negatives.join(', ')}');
    }

    return numberList.fold(0, (a, b) => a + b);
  }
}
