import 'package:flutter/material.dart';
import '/backend/backend.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _AlterarNome = prefs.getBool('ff_AlterarNome') ?? _AlterarNome;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _numitemcar = 0.0;
  double get numitemcar => _numitemcar;
  set numitemcar(double value) {
    _numitemcar = value;
  }

  double _soma = 0.0;
  double get soma => _soma;
  set soma(double value) {
    _soma = value;
  }

  bool _AlterarNome = false;
  bool get AlterarNome => _AlterarNome;
  set AlterarNome(bool value) {
    _AlterarNome = value;
    prefs.setBool('ff_AlterarNome', value);
  }

  List<DocumentReference> _favoritos = [];
  List<DocumentReference> get favoritos => _favoritos;
  set favoritos(List<DocumentReference> value) {
    _favoritos = value;
  }

  void addToFavoritos(DocumentReference value) {
    favoritos.add(value);
  }

  void removeFromFavoritos(DocumentReference value) {
    favoritos.remove(value);
  }

  void removeAtIndexFromFavoritos(int index) {
    favoritos.removeAt(index);
  }

  void updateFavoritosAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    favoritos[index] = updateFn(_favoritos[index]);
  }

  void insertAtIndexInFavoritos(int index, DocumentReference value) {
    favoritos.insert(index, value);
  }

  bool _PesquisaON = false;
  bool get PesquisaON => _PesquisaON;
  set PesquisaON(bool value) {
    _PesquisaON = value;
  }
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
