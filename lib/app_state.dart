import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _day21 = prefs.getStringList('ff_day21')?.map(int.parse).toList() ?? _day21;
    _taxPercentage = prefs.getDouble('ff_taxPercentage') ?? _taxPercentage;
    _checkAmout = prefs.getDouble('ff_checkAmout') ?? _checkAmout;
  }

  late SharedPreferences prefs;

  bool uploadToVisionBoard = false;

  List<int> _day21 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> get day21 => _day21;
  set day21(List<int> _value) {
    _day21 = _value;
    prefs.setStringList('ff_day21', _value.map((x) => x.toString()).toList());
  }

  void addToDay21(int _value) {
    _day21.add(_value);
    prefs.setStringList('ff_day21', _day21.map((x) => x.toString()).toList());
  }

  void removeFromDay21(int _value) {
    _day21.remove(_value);
    prefs.setStringList('ff_day21', _day21.map((x) => x.toString()).toList());
  }

  double _taxPercentage = 0.0;
  double get taxPercentage => _taxPercentage;
  set taxPercentage(double _value) {
    _taxPercentage = _value;
    prefs.setDouble('ff_taxPercentage', _value);
  }

  double _checkAmout = 0.0;
  double get checkAmout => _checkAmout;
  set checkAmout(double _value) {
    _checkAmout = _value;
    prefs.setDouble('ff_checkAmout', _value);
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
