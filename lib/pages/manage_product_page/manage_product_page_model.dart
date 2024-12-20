import '/components/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'manage_product_page_widget.dart' show ManageProductPageWidget;
import 'package:flutter/material.dart';

class ManageProductPageModel extends FlutterFlowModel<ManageProductPageWidget> {
  ///  State fields for stateful widgets in this page.

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
