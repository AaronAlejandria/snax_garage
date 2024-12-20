// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartItemStruct extends BaseStruct {
  CartItemStruct({
    int? cartItemId,
    String? cartItemName,
    int? cartItemQuantity,
    String? cartItemSize,
    String? cartItemSugarLevel,
    double? cartItemPrice,
    bool? cartMultipleprice,
    int? menuItemId,
  })  : _cartItemId = cartItemId,
        _cartItemName = cartItemName,
        _cartItemQuantity = cartItemQuantity,
        _cartItemSize = cartItemSize,
        _cartItemSugarLevel = cartItemSugarLevel,
        _cartItemPrice = cartItemPrice,
        _cartMultipleprice = cartMultipleprice,
        _menuItemId = menuItemId;

  // "cartItemId" field.
  int? _cartItemId;
  int get cartItemId => _cartItemId ?? 0;
  set cartItemId(int? val) => _cartItemId = val;

  void incrementCartItemId(int amount) => cartItemId = cartItemId + amount;

  bool hasCartItemId() => _cartItemId != null;

  // "cartItemName" field.
  String? _cartItemName;
  String get cartItemName => _cartItemName ?? '';
  set cartItemName(String? val) => _cartItemName = val;

  bool hasCartItemName() => _cartItemName != null;

  // "cartItemQuantity" field.
  int? _cartItemQuantity;
  int get cartItemQuantity => _cartItemQuantity ?? 0;
  set cartItemQuantity(int? val) => _cartItemQuantity = val;

  void incrementCartItemQuantity(int amount) =>
      cartItemQuantity = cartItemQuantity + amount;

  bool hasCartItemQuantity() => _cartItemQuantity != null;

  // "cartItemSize" field.
  String? _cartItemSize;
  String get cartItemSize => _cartItemSize ?? '';
  set cartItemSize(String? val) => _cartItemSize = val;

  bool hasCartItemSize() => _cartItemSize != null;

  // "cartItemSugarLevel" field.
  String? _cartItemSugarLevel;
  String get cartItemSugarLevel => _cartItemSugarLevel ?? '';
  set cartItemSugarLevel(String? val) => _cartItemSugarLevel = val;

  bool hasCartItemSugarLevel() => _cartItemSugarLevel != null;

  // "cartItemPrice" field.
  double? _cartItemPrice;
  double get cartItemPrice => _cartItemPrice ?? 0.0;
  set cartItemPrice(double? val) => _cartItemPrice = val;

  void incrementCartItemPrice(double amount) =>
      cartItemPrice = cartItemPrice + amount;

  bool hasCartItemPrice() => _cartItemPrice != null;

  // "cartMultipleprice" field.
  bool? _cartMultipleprice;
  bool get cartMultipleprice => _cartMultipleprice ?? false;
  set cartMultipleprice(bool? val) => _cartMultipleprice = val;

  bool hasCartMultipleprice() => _cartMultipleprice != null;

  // "menuItemId" field.
  int? _menuItemId;
  int get menuItemId => _menuItemId ?? 0;
  set menuItemId(int? val) => _menuItemId = val;

  void incrementMenuItemId(int amount) => menuItemId = menuItemId + amount;

  bool hasMenuItemId() => _menuItemId != null;

  static CartItemStruct fromMap(Map<String, dynamic> data) => CartItemStruct(
        cartItemId: castToType<int>(data['cartItemId']),
        cartItemName: data['cartItemName'] as String?,
        cartItemQuantity: castToType<int>(data['cartItemQuantity']),
        cartItemSize: data['cartItemSize'] as String?,
        cartItemSugarLevel: data['cartItemSugarLevel'] as String?,
        cartItemPrice: castToType<double>(data['cartItemPrice']),
        cartMultipleprice: data['cartMultipleprice'] as bool?,
        menuItemId: castToType<int>(data['menuItemId']),
      );

  static CartItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartItemStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cartItemId': _cartItemId,
        'cartItemName': _cartItemName,
        'cartItemQuantity': _cartItemQuantity,
        'cartItemSize': _cartItemSize,
        'cartItemSugarLevel': _cartItemSugarLevel,
        'cartItemPrice': _cartItemPrice,
        'cartMultipleprice': _cartMultipleprice,
        'menuItemId': _menuItemId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cartItemId': serializeParam(
          _cartItemId,
          ParamType.int,
        ),
        'cartItemName': serializeParam(
          _cartItemName,
          ParamType.String,
        ),
        'cartItemQuantity': serializeParam(
          _cartItemQuantity,
          ParamType.int,
        ),
        'cartItemSize': serializeParam(
          _cartItemSize,
          ParamType.String,
        ),
        'cartItemSugarLevel': serializeParam(
          _cartItemSugarLevel,
          ParamType.String,
        ),
        'cartItemPrice': serializeParam(
          _cartItemPrice,
          ParamType.double,
        ),
        'cartMultipleprice': serializeParam(
          _cartMultipleprice,
          ParamType.bool,
        ),
        'menuItemId': serializeParam(
          _menuItemId,
          ParamType.int,
        ),
      }.withoutNulls;

  static CartItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartItemStruct(
        cartItemId: deserializeParam(
          data['cartItemId'],
          ParamType.int,
          false,
        ),
        cartItemName: deserializeParam(
          data['cartItemName'],
          ParamType.String,
          false,
        ),
        cartItemQuantity: deserializeParam(
          data['cartItemQuantity'],
          ParamType.int,
          false,
        ),
        cartItemSize: deserializeParam(
          data['cartItemSize'],
          ParamType.String,
          false,
        ),
        cartItemSugarLevel: deserializeParam(
          data['cartItemSugarLevel'],
          ParamType.String,
          false,
        ),
        cartItemPrice: deserializeParam(
          data['cartItemPrice'],
          ParamType.double,
          false,
        ),
        cartMultipleprice: deserializeParam(
          data['cartMultipleprice'],
          ParamType.bool,
          false,
        ),
        menuItemId: deserializeParam(
          data['menuItemId'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CartItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartItemStruct &&
        cartItemId == other.cartItemId &&
        cartItemName == other.cartItemName &&
        cartItemQuantity == other.cartItemQuantity &&
        cartItemSize == other.cartItemSize &&
        cartItemSugarLevel == other.cartItemSugarLevel &&
        cartItemPrice == other.cartItemPrice &&
        cartMultipleprice == other.cartMultipleprice &&
        menuItemId == other.menuItemId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        cartItemId,
        cartItemName,
        cartItemQuantity,
        cartItemSize,
        cartItemSugarLevel,
        cartItemPrice,
        cartMultipleprice,
        menuItemId
      ]);
}

CartItemStruct createCartItemStruct({
  int? cartItemId,
  String? cartItemName,
  int? cartItemQuantity,
  String? cartItemSize,
  String? cartItemSugarLevel,
  double? cartItemPrice,
  bool? cartMultipleprice,
  int? menuItemId,
}) =>
    CartItemStruct(
      cartItemId: cartItemId,
      cartItemName: cartItemName,
      cartItemQuantity: cartItemQuantity,
      cartItemSize: cartItemSize,
      cartItemSugarLevel: cartItemSugarLevel,
      cartItemPrice: cartItemPrice,
      cartMultipleprice: cartMultipleprice,
      menuItemId: menuItemId,
    );
