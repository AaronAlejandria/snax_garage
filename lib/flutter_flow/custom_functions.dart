import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double itemTotalPriceComputation(
  double itemPrice,
  int itemQuantity,
) {
  // create a function where it will take the itemPrice and itemQuantity variables and multiply it. this will return the product integer
  return itemPrice * itemQuantity;
}

double? deductCartTotalPrice(
  double itemTotalPrice,
  double cartTotalPrice,
) {
  // create a function where it will recieve the cartTotalPrice appstate variable and the cartTilePrice variable. It will add the cartTilePrice to the value of the cartTotalPrice
  return cartTotalPrice - itemTotalPrice;
}

double? computeCartTotalPrice(
  double itemTotalPrice,
  double cartTotalPrice,
) {
  // create a function where it will recieve the cartTotalPrice appstate variable and the cartTilePrice variable. It will add the cartTilePrice to the value of the cartTotalPrice
  return cartTotalPrice + itemTotalPrice;
}
