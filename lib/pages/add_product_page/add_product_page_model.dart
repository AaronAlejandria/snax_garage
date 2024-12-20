import '/backend/supabase/supabase.dart';
import '/components/side_bar/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_product_page_widget.dart' show AddProductPageWidget;
import 'package:flutter/material.dart';

class AddProductPageModel extends FlutterFlowModel<AddProductPageWidget> {
  ///  Local state fields for this page.

  bool size = true;

  String? name = '';

  int? subCatId;

  double? price1;

  double? price2;

  String? subCatName;

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - Query Rows] action in DropDown widget.
  List<SubCategoryRow>? getID;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue1;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for price1 widget.
  FocusNode? price1FocusNode;
  TextEditingController? price1TextController;
  String? Function(BuildContext, String?)? price1TextControllerValidator;
  // State field(s) for price2 widget.
  FocusNode? price2FocusNode;
  TextEditingController? price2TextController;
  String? Function(BuildContext, String?)? price2TextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue2;
  // Model for sideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    price1FocusNode?.dispose();
    price1TextController?.dispose();

    price2FocusNode?.dispose();
    price2TextController?.dispose();

    sideBarModel.dispose();
  }
}
