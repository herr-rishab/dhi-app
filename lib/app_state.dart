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

  int _selectedNews = 1;
  int get selectedNews => _selectedNews;
  set selectedNews(int value) {
    _selectedNews = value;
  }

  int _selectedHospital = 1;
  int get selectedHospital => _selectedHospital;
  set selectedHospital(int value) {
    _selectedHospital = value;
  }

  String _verificationID = '';
  String get verificationID => _verificationID;
  set verificationID(String value) {
    _verificationID = value;
  }

  String _aiAnswer = '';
  String get aiAnswer => _aiAnswer;
  set aiAnswer(String value) {
    _aiAnswer = value;
  }

  String _aiQuestion = '';
  String get aiQuestion => _aiQuestion;
  set aiQuestion(String value) {
    _aiQuestion = value;
  }

  String _aiUploadImage = '';
  String get aiUploadImage => _aiUploadImage;
  set aiUploadImage(String value) {
    _aiUploadImage = value;
  }

  bool _showScheme = false;
  bool get showScheme => _showScheme;
  set showScheme(bool value) {
    _showScheme = value;
  }

  String _selectedModule = '';
  String get selectedModule => _selectedModule;
  set selectedModule(String value) {
    _selectedModule = value;
  }

  String _selectedChapter = '';
  String get selectedChapter => _selectedChapter;
  set selectedChapter(String value) {
    _selectedChapter = value;
  }

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String value) {
    _phoneNumber = value;
  }
}
