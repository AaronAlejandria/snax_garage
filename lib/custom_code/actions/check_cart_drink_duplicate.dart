// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> checkCartDrinkDuplicate(
  int? itemId,
  String? itemSugarLevel,
  double? itemPrice,
) async {
  // Validate inputs to ensure they're not null
  if (itemId == null || itemSugarLevel == null || itemPrice == null) {
    return false; // Return false for invalid inputs
  }

  // Access the AppState list
  final currentCartItems = FFAppState().cartList;

  // Check for a duplicate
  for (final cartItem in currentCartItems) {
    print(
        'Checking cart item: ${cartItem.menuItemId}, ${cartItem.cartItemSugarLevel}, ${cartItem.cartItemPrice}');
    print('Against input: $itemId, $itemSugarLevel, $itemPrice');
    if (cartItem.menuItemId == itemId &&
        cartItem.cartItemSugarLevel == itemSugarLevel &&
        cartItem.cartItemPrice == itemPrice) {
      print('Duplicate found');
      return true; // Duplicate found
    }
  }

  print('No duplicate found');
  return false; // No duplicate found
}
