import '/backend/supabase/supabase.dart';
import '/components/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sales_overview_widget.dart' show SalesOverviewWidget;
import 'package:flutter/material.dart';

class SalesOverviewModel extends FlutterFlowModel<SalesOverviewWidget> {
  ///  Local state fields for this page.

  double? totalSales;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in SalesOverview widget.
  List<OrdersTableRow>? ordersTable;
  // Stores action output result for [Backend Call - Query Rows] action in SalesOverview widget.
  List<ItemSalesRow>? itemSales;
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
