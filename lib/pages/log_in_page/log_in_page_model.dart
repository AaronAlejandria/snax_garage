import '/flutter_flow/flutter_flow_util.dart';
import 'log_in_page_widget.dart' show LogInPageWidget;
import 'package:flutter/material.dart';

class LogInPageModel extends FlutterFlowModel<LogInPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for username_field widget.
  FocusNode? usernameFieldFocusNode;
  TextEditingController? usernameFieldTextController;
  String? Function(BuildContext, String?)? usernameFieldTextControllerValidator;
  // State field(s) for password_field widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordFieldVisibility = false;
  }

  @override
  void dispose() {
    usernameFieldFocusNode?.dispose();
    usernameFieldTextController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();
  }
}
