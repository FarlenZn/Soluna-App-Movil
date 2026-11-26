import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import '/backend/schema/structs/index.dart';

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

  List<ItemCarritoStruct> _carrito = [];
  List<ItemCarritoStruct> get carrito => _carrito;
  set carrito(List<ItemCarritoStruct> value) {
    _carrito = value;
  }

  void addToCarrito(ItemCarritoStruct value) {
    carrito.add(value);
  }

  void removeFromCarrito(ItemCarritoStruct value) {
    carrito.remove(value);
  }

  void removeAtIndexFromCarrito(int index) {
    carrito.removeAt(index);
  }

  void updateCarritoAtIndex(
    int index,
    ItemCarritoStruct Function(ItemCarritoStruct) updateFn,
  ) {
    carrito[index] = updateFn(_carrito[index]);
  }

  void insertAtIndexInCarrito(int index, ItemCarritoStruct value) {
    carrito.insert(index, value);
  }

  String _tipoEntrega = 'local';
  String get tipoEntrega => _tipoEntrega;
  set tipoEntrega(String value) {
    _tipoEntrega = value;
  }

  String _direccion = '';
  String get direccion => _direccion;
  set direccion(String value) {
    _direccion = value;
  }

  double _latitud = 0.0;
  double get latitud => _latitud;
  set latitud(double value) {
    _latitud = value;
  }

  double _longitud = 0.0;
  double get longitud => _longitud;
  set longitud(double value) {
    _longitud = value;
  }
}
