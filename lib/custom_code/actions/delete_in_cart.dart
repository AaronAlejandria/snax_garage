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

Future deleteInCart(
  int? cItemId,
  int? mItemId,
) async {
  // Access the AppState list
  final currentCartItems = FFAppState().cartList;

  // Use removeWhere to efficiently remove items matching both conditions
  currentCartItems.removeWhere((cartItem) {
    // Ensure cartItem properties are valid before checking conditions
    return cartItem.cartItemId == cItemId && cartItem.menuItemId == mItemId;
  });
}
