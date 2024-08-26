import 'package:flutter/material.dart';

class SensorData with ChangeNotifier {
  double _temperature = 0.0;
  double _ecg = 0.0;
  double _pressure = 0.0;
  double _oxygenLevel = 0.0; 
  int _heartRate = 0; 
  bool _isIRSensorWorking = false; // New field for IR sensor status

  double get temperature => _temperature;
  double get ecg => _ecg;
  double get pressure => _pressure;
  double get oxygenLevel => _oxygenLevel;
  int get heartRate => _heartRate;
  bool get isIRSensorWorking => _isIRSensorWorking; // Getter for IR sensor status

  void updateTemperature(double value) {
    _temperature = value;
    notifyListeners();
  }

  void updateECG(double value) {
    _ecg = value;
    notifyListeners();
  }

  void updatePressure(double value) {
    _pressure = value;
    notifyListeners();
  }

  void setOxygenLevel(double value) {
    _oxygenLevel = value;
    notifyListeners();
  }

  void setHeartRate(int value) {
    _heartRate = value;
    notifyListeners();
  }

  void setIRSensorStatus(bool isWorking) { // New method to set IR sensor status
    _isIRSensorWorking = isWorking;
    notifyListeners();
  }
}
