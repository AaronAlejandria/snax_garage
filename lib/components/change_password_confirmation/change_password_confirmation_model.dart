import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'change_password_confirmation_widget.dart'
    show ChangePasswordConfirmationWidget;
import 'package:flutter/material.dart';

class ChangePasswordConfirmationModel
    extends FlutterFlowModel<ChangePasswordConfirmationWidget> {
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
