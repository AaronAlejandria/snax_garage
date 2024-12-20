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

Future incrementItemQuantity(
  int? cItemId,
  int? mItemId,
) async {
  // Access the AppState list
  final currentCartItems = FFAppState().cartList;

  // Find the matching cart item and increment its quantity
  for (var cartItem in currentCartItems) {
    if (cartItem.cartItemId == cItemId && cartItem.menuItemId == mItemId) {
      cartItem.cartItemQuantity += 1;
      break; // Exit the loop once the match is found and updated
    }
  }
}
