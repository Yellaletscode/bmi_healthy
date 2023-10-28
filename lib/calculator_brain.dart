import 'dart:math';

String normal = 'NORMAL';
String overWeight = 'OVERWEIGHT';
String underWeight = 'UNDERWEIGHT';

class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
  });

  final int height;
  final int weight;
  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    double bmi1 = _bmi;
    return bmi1.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return overWeight;
    } else if (_bmi > 18.5 && _bmi <= 25) {
      return normal;
    } else {
      return underWeight;
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5 && _bmi <= 25) {
      return 'You have a normal weight. Good job!';
    } else {
      return 'you have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
