import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checkout_confirmation_widget.dart' show CheckoutConfirmationWidget;
import 'package:flutter/material.dart';

class CheckoutConfirmationModel
    extends FlutterFlowModel<CheckoutConfirmationWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrdersTableRow? insertedOrders;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<OrdersTableRow>? ordersTable;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  OrderItemsRow? ordersItem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
