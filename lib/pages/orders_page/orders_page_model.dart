import '/backend/supabase/supabase.dart';
import '/components/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'orders_page_widget.dart' show OrdersPageWidget;
import 'package:flutter/material.dart';

class OrdersPageModel extends FlutterFlowModel<OrdersPageWidget> {
  ///  Local state fields for this page.

  int? orderId;

  String? orderStatus = '';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrdersTableRow>? pendingToInProgress;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrdersTableRow>? inProgressToReady;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<OrdersTableRow>? readyToComplete;
  // Model for sideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    sideBarModel.dispose();
  }
}
