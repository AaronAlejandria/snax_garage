import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'change_password_confirmation_model.dart';
export 'change_password_confirmation_model.dart';

class ChangePasswordConfirmationWidget extends StatefulWidget {
  const ChangePasswordConfirmationWidget({super.key});

  @override
  State<ChangePasswordConfirmationWidget> createState() =>
      _ChangePasswordConfirmationWidgetState();
}

class _ChangePasswordConfirmationWidgetState
    extends State<ChangePasswordConfirmationWidget> {
  late ChangePasswordConfirmationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangePasswordConfirmationModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 240.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60.0,
              height: 4.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).alternate,
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Confirm Change Password',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Nunito',
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  '                       Are you sure you want to change your password?\nMake sure to remember your new password. This action cannot be undone.',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ].divide(const SizedBox(height: 16.0)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Cancel',
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 50.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Nunito',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).alternate,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    _model.insertedOrders = await OrdersTableTable().insert({
                      'order_status': 'Pending',
                      'sales': FFAppState().cartTotalPrice,
                    });
                    _model.ordersTable = await OrdersTableTable().queryRows(
                      queryFn: (q) => q,
                    );
                    FFAppState().indexSorter = 0;
                    safeSetState(() {});
                    while (FFAppState().indexSorter <
                        FFAppState().cartList.length) {
                      _model.ordersItem = await OrderItemsTable().insert({
                        'orders_item_name': FFAppState()
                            .cartList
                            .elementAtOrNull(FFAppState().indexSorter)
                            ?.cartItemName,
                        'orders_item_size': FFAppState()
                            .cartList
                            .elementAtOrNull(FFAppState().indexSorter)
                            ?.cartItemSize,
                        'orders_item_quantity': FFAppState()
                            .cartList
                            .elementAtOrNull(FFAppState().indexSorter)
                            ?.cartItemQuantity,
                        'orders_table_id': _model.ordersTable?.length,
                        'orders_item_sugarLevel': FFAppState()
                            .cartList
                            .elementAtOrNull(FFAppState().indexSorter)
                            ?.cartItemSugarLevel,
                        'orders_Item_price': FFAppState()
                            .cartList
                            .elementAtOrNull(FFAppState().indexSorter)
                            ?.cartItemPrice,
                        'orders_item_id': FFAppState()
                            .cartList
                            .elementAtOrNull(FFAppState().indexSorter)
                            ?.menuItemId,
                      });
                      FFAppState().indexSorter = FFAppState().indexSorter + 1;
                      safeSetState(() {});
                    }

                    safeSetState(() {});
                  },
                  text: 'Save',
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 50.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Nunito',
                          color: FlutterFlowTheme.of(context).info,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ].divide(const SizedBox(width: 16.0)),
            ),
          ].divide(const SizedBox(height: 24.0)),
        ),
      ),
    );
  }
}
