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

Future<int> getGrandTotal(
  int? grandTotalPrice,
  int? cartTilePrice,
) async {
  // create a function where it will recieve the grandTotalPrice appstate variable and the cartTilePrice variable. It will add the cartTilePrice to the value of the grandTotalPrice

  if (grandTotalPrice != null && cartTilePrice != null) {
    return grandTotalPrice + cartTilePrice;
  } else {
    throw Exception("Invalid input values");
  }
}
