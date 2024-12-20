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

Future<bool> checkCartFoodDuplicate(
  int? itemId,
) async {
  // Validate inputs to ensure they're not null

  // Access the AppState list
  final currentCartItems = FFAppState().cartList;

  // Check for a duplicate
  for (final cartItem in currentCartItems) {
    if (cartItem.menuItemId == itemId) {
      print('Duplicate found');
      return true; // Duplicate found
    }
  }

  print('No duplicate found');
  return false; // No duplicate found
}
