import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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

  List<int> _Datagra = [10, 68, 53, 12, 6, 40, 70, 30, 60, 80];
  List<int> get Datagra => _Datagra;
  set Datagra(List<int> _value) {
    _Datagra = _value;
  }

  void addToDatagra(int _value) {
    _Datagra.add(_value);
  }

  void removeFromDatagra(int _value) {
    _Datagra.remove(_value);
  }

  void removeAtIndexFromDatagra(int _index) {
    _Datagra.removeAt(_index);
  }

  void updateDatagraAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _Datagra[_index] = updateFn(_Datagra[_index]);
  }

  void insertAtIndexInDatagra(int _index, int _value) {
    _Datagra.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
