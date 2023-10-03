import 'dart:io';

String transformString(String inputStr) {
  String result = '';
  int count = 0;  // To keep track of the character position

  for (int i = 0; i < inputStr.length; i++) {
    String char = inputStr[i];

    if (char.contains(RegExp(r'[a-zA-Z]'))) {  // Check if the character is alphabetic
      count++;
      if (count % 3 == 0) {  // Every third alphabetic character
        result += char.toUpperCase();
      } else {
        result += char.toLowerCase();
      }
    } else {
      result += char;  // Non-alphabetic characters remain unchanged
    }
  }

  return result;
}

void main() {
  stdout.write("Enter the input string: ");
  String input = stdin.readLineSync() ?? "";
  String output = transformString(input);
  print("Transformed string: $output");
}
