import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int? height;
  final int? weight;
  double? _bmi;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);  // toStringAsFixed(1) bu kod verguldan kyin necta xonagacaligini kursatadi agar qavsdi iciga 2 yozilsa 10 lar xonasigaca ko'rsatadi va hokazo
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
