import 'dart:math';

class BmiLogic {
  BmiLogic({this.height, this.weight});

  final int? height;
  final int? weight;

  double? _bmi;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Лишний вес';
    } else if (_bmi! > 18.5) {
      return 'Обычный';
    } else {
      return 'Низкий вес';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'Ваш вес тела выше нормала,старайтесь больше тренироваться.\n 💪🚵🚴🏊🏇🏃';
    } else if (_bmi! >= 18.5) {
      return 'Ваш вес в норме. Отлична!\n 🍇🍉🍍🍒🌽';
    } else {
      return 'Вес вашего тела ниже нормы. Вы можете съесть немного больше.\n 🍲🍱🍳🍗🍒🍎';
    }
  }
}