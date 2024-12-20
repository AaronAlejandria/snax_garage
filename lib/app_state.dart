import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _mainCategoryID = prefs.getInt('ff_mainCategoryID') ?? _mainCategoryID;
    });
    _safeInit(() {
      _Role = prefs.getString('ff_Role') ?? _Role;
    });
    _safeInit(() {
      _userID = prefs.getString('ff_userID') ?? _userID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CartItemStruct> _cartList = [];
  List<CartItemStruct> get cartList => _cartList;
  set cartList(List<CartItemStruct> value) {
    _cartList = value;
  }

  void addToCartList(CartItemStruct value) {
    cartList.add(value);
  }

  void removeFromCartList(CartItemStruct value) {
    cartList.remove(value);
  }

  void removeAtIndexFromCartList(int index) {
    cartList.removeAt(index);
  }

  void updateCartListAtIndex(
    int index,
    CartItemStruct Function(CartItemStruct) updateFn,
  ) {
    cartList[index] = updateFn(_cartList[index]);
  }

  void insertAtIndexInCartList(int index, CartItemStruct value) {
    cartList.insert(index, value);
  }

  int _mainCategoryID = 2;
  int get mainCategoryID => _mainCategoryID;
  set mainCategoryID(int value) {
    _mainCategoryID = value;
    prefs.setInt('ff_mainCategoryID', value);
  }

  bool _sideBarExpanded = false;
  bool get sideBarExpanded => _sideBarExpanded;
  set sideBarExpanded(bool value) {
    _sideBarExpanded = value;
  }

  int _sideBarSelected = 1;
  int get sideBarSelected => _sideBarSelected;
  set sideBarSelected(int value) {
    _sideBarSelected = value;
  }

  double _cartTotalPrice = 0.0;
  double get cartTotalPrice => _cartTotalPrice;
  set cartTotalPrice(double value) {
    _cartTotalPrice = value;
  }

  int _indexSorter = 0;
  int get indexSorter => _indexSorter;
  set indexSorter(int value) {
    _indexSorter = value;
  }

  String _Role = '';
  String get Role => _Role;
  set Role(String value) {
    _Role = value;
    prefs.setString('ff_Role', value);
  }

  String _userID = '';
  String get userID => _userID;
  set userID(String value) {
    _userID = value;
    prefs.setString('ff_userID', value);
  }

  List<String> _itemX = [];
  List<String> get itemX => _itemX;
  set itemX(List<String> value) {
    _itemX = value;
  }

  void addToItemX(String value) {
    itemX.add(value);
  }

  void removeFromItemX(String value) {
    itemX.remove(value);
  }

  void removeAtIndexFromItemX(int index) {
    itemX.removeAt(index);
  }

  void updateItemXAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    itemX[index] = updateFn(_itemX[index]);
  }

  void insertAtIndexInItemX(int index, String value) {
    itemX.insert(index, value);
  }

  List<int> _itemY = [];
  List<int> get itemY => _itemY;
  set itemY(List<int> value) {
    _itemY = value;
  }

  void addToItemY(int value) {
    itemY.add(value);
  }

  void removeFromItemY(int value) {
    itemY.remove(value);
  }

  void removeAtIndexFromItemY(int index) {
    itemY.removeAt(index);
  }

  void updateItemYAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    itemY[index] = updateFn(_itemY[index]);
  }

  void insertAtIndexInItemY(int index, int value) {
    itemY.insert(index, value);
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
