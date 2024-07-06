import 'dart:io';

void main() {
  List<double> Number = [];
  stdout.write("Please enter Number1. ");
  double? a = double.tryParse(stdin.readLineSync()!);
  Number.add(a!);
  stdout.write("Please enter Number2. ");
  double? b = double.tryParse(stdin.readLineSync()!);
  Number.add(b!);

  bool c = true;
  while (c == true) {
    stdout.write(" Are you enter another Number :: yes/no");
    String v = stdin.readLineSync()!;
    if (v == "yes") {
      stdout.write(" ok done , Please enter Number ");
      double m = double.parse(stdin.readLineSync()!);
      Number.add(m);
      continue;
    } else {
      print("okk , Ready for Total");
      break;
    }
  }

  double total = 0;

  for (double i in Number) {
    total += i;
  }
  print("  Total of numbers :: $total");
}
