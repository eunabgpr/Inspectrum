import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _tallyScore = 0;
  int get tallyScore => _tallyScore;
  set tallyScore(int value) {
    _tallyScore = value;
  }

  String _resultPositive =
      'Hi! Thank you so much for participating! Your thoughtful approach and steady focus really stood out, and we truly appreciate the effort you brought to this project.';
  String get resultPositive => _resultPositive;
  set resultPositive(String value) {
    _resultPositive = value;
  }

  String _resultNegative = '';
  String get resultNegative => _resultNegative;
  set resultNegative(String value) {
    _resultNegative = value;
  }

  List<dynamic> _surveyAnswers = [];
  List<dynamic> get surveyAnswers => _surveyAnswers;
  set surveyAnswers(List<dynamic> value) {
    _surveyAnswers = value;
  }

  void addToSurveyAnswers(dynamic value) {
    surveyAnswers.add(value);
  }

  void removeFromSurveyAnswers(dynamic value) {
    surveyAnswers.remove(value);
  }

  void removeAtIndexFromSurveyAnswers(int index) {
    surveyAnswers.removeAt(index);
  }

  void updateSurveyAnswersAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    surveyAnswers[index] = updateFn(_surveyAnswers[index]);
  }

  void insertAtIndexInSurveyAnswers(int index, dynamic value) {
    surveyAnswers.insert(index, value);
  }

  int _surveyItem = 0;
  int get surveyItem => _surveyItem;
  set surveyItem(int value) {
    _surveyItem = value;
  }
}
