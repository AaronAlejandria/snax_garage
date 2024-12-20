import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'foods_menu_tile_model.dart';
export 'foods_menu_tile_model.dart';

class FoodsMenuTileWidget extends StatefulWidget {
  const FoodsMenuTileWidget({
    super.key,
    required this.itemName,
    required this.itemID,
    required this.itemPrice,
    required this.mutiplePrice,
  });

  final String? itemName;
  final int? itemID;
  final double? itemPrice;
  final bool? mutiplePrice;

  @override
  State<FoodsMenuTileWidget> createState() => _FoodsMenuTileWidgetState();
}

class _FoodsMenuTileWidgetState extends State<FoodsMenuTileWidget> {
  late FoodsMenuTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FoodsMenuTileModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.sugarLevel = 'n/a';
      _model.ozPrice = widget.itemPrice;
      _model.ozSize = 'n/a';
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(12.0, 2.0, 12.0, 2.0),
      child: Container(
        width: 400.0,
        height: 125.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).secondaryText,
            width: 1.5,
          ),
        ),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.transparent,
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.itemName,
                          'Item Name',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Nunito',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '₱ ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.itemPrice?.toString(),
                              '1',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Nunito',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          var shouldSetState = false;
                          _model.itemIsInCartCopy =
                              await actions.checkCartFoodDuplicate(
                            widget.itemID,
                          );
                          shouldSetState = true;
                          if (_model.itemIsInCartCopy == true) {
                            if (shouldSetState) safeSetState(() {});
                            return;
                          }

                          FFAppState().addToCartList(CartItemStruct(
                            cartItemId: FFAppState().cartList.length,
                            cartItemName: widget.itemName,
                            cartItemQuantity: 1,
                            cartItemSize: _model.ozSize,
                            cartItemSugarLevel: _model.sugarLevel,
                            cartItemPrice: _model.ozPrice,
                            menuItemId: widget.itemID,
                          ));
                          FFAppState().cartTotalPrice =
                              FFAppState().cartTotalPrice + _model.ozPrice!;
                          FFAppState().update(() {});
                          _model.sugarLevel = 'n/a';
                          _model.ozPrice = _model.ozPrice;
                          _model.ozSize = 'n/a';
                          safeSetState(() {});
                          if (shouldSetState) safeSetState(() {});
                        },
                        text: 'Add to Cart',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Nunito',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
