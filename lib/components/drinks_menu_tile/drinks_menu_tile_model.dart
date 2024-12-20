import '/flutter_flow/flutter_flow_util.dart';
import 'drinks_menu_tile_widget.dart' show DrinksMenuTileWidget;
import 'package:flutter/material.dart';

class DrinksMenuTileModel extends FlutterFlowModel<DrinksMenuTileWidget> {
  ///  Local state fields for this component.

  String? sugarLevel = 'Sugar Level : 25';

  double? ozPrice;

  String? ozSize;

  bool alreadyInCart = true;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - checkCartDrinkDuplicate] action in Button widget.
  bool? itemIsInCartCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
