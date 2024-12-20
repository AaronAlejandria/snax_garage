import '/components/cart_coloumn/cart_coloumn_widget.dart';
import '/components/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'menu_page_widget.dart' show MenuPageWidget;
import 'package:flutter/material.dart';

class MenuPageModel extends FlutterFlowModel<MenuPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cartColoumn component.
  late CartColoumnModel cartColoumnModel;
  // Model for sideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    cartColoumnModel = createModel(context, () => CartColoumnModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    cartColoumnModel.dispose();
    sideBarModel.dispose();
  }
}
