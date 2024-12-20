import '/flutter_flow/flutter_flow_util.dart';
import 'foods_menu_tile_widget.dart' show FoodsMenuTileWidget;
import 'package:flutter/material.dart';

class FoodsMenuTileModel extends FlutterFlowModel<FoodsMenuTileWidget> {
  ///  Local state fields for this component.

  String? sugarLevel = 'Sugar Level : 25';

  double? ozPrice;

  String? ozSize;

  bool alreadyInCart = true;

  int? indexId;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - checkCartFoodDuplicate] action in Button widget.
  bool? itemIsInCartCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
