import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'cart_tile_model.dart';
export 'cart_tile_model.dart';

class CartTileWidget extends StatefulWidget {
  const CartTileWidget({
    super.key,
    required this.cartItemName,
    required this.cartItemID,
    required this.cartItemPrice,
    required this.cartItemSize,
    required this.cartItemSugarLevel,
    required this.cartMultiplePrice,
    required this.menuItemId,
    required this.cartItemQuantity,
  });

  final String? cartItemName;
  final int? cartItemID;
  final double? cartItemPrice;
  final String? cartItemSize;
  final String? cartItemSugarLevel;
  final bool? cartMultiplePrice;
  final int? menuItemId;
  final int? cartItemQuantity;

  @override
  State<CartTileWidget> createState() => _CartTileWidgetState();
}

class _CartTileWidgetState extends State<CartTileWidget> {
  late CartTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartTileModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.itemQuantity = widget.cartItemQuantity!;
      safeSetState(() {});
      _model.itemTotalPrice = functions.itemTotalPriceComputation(
          widget.cartItemPrice!, _model.itemQuantity);
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

    return Builder(
      builder: (context) {
        if (widget.cartMultiplePrice ?? false) {
          return Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF9FAFD),
                borderRadius: BorderRadius.circular(6.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 1.5,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          valueOrDefault<String>(
                            widget.cartItemName,
                            'name',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            AutoSizeText(
                              '₱',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AutoSizeText(
                              valueOrDefault<String>(
                                widget.cartItemPrice?.toString(),
                                '15',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AutoSizeText(
                              ' x ',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AutoSizeText(
                              valueOrDefault<String>(
                                _model.itemQuantity.toString(),
                                '1',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AutoSizeText(
                              ':',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AutoSizeText(
                              '₱',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AutoSizeText(
                              valueOrDefault<String>(
                                _model.itemTotalPrice?.toString(),
                                '1',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          valueOrDefault<String>(
                            widget.cartItemSugarLevel,
                            'Sugar Level:25',
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        AutoSizeText(
                          valueOrDefault<String>(
                            widget.cartItemSize,
                            '22 oz',
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.itemQuantity > 1) {
                                      _model.itemQuantity =
                                          _model.itemQuantity + -1;
                                      safeSetState(() {});
                                      await actions.decrementItemQuantity(
                                        widget.cartItemID,
                                        widget.menuItemId,
                                      );
                                      _model.itemTotalPrice =
                                          functions.itemTotalPriceComputation(
                                              widget.cartItemPrice!,
                                              _model.itemQuantity);
                                      safeSetState(() {});
                                      FFAppState().cartTotalPrice =
                                          functions.deductCartTotalPrice(
                                              widget.cartItemPrice!,
                                              FFAppState().cartTotalPrice)!;
                                      FFAppState().update(() {});
                                    }
                                  },
                                  text: '-',
                                  options: FFButtonOptions(
                                    width: 52.0,
                                    height: 52.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0x00D9D9D9),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      _model.itemQuantity.toString(),
                                      '1',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    _model.itemQuantity =
                                        _model.itemQuantity + 1;
                                    _model.updatePage(() {});
                                    await actions.incrementItemQuantity(
                                      widget.cartItemID,
                                      widget.menuItemId,
                                    );
                                    _model.itemTotalPrice =
                                        functions.itemTotalPriceComputation(
                                            widget.cartItemPrice!,
                                            _model.itemQuantity);
                                    safeSetState(() {});
                                    FFAppState().cartTotalPrice =
                                        functions.computeCartTotalPrice(
                                            widget.cartItemPrice!,
                                            FFAppState().cartTotalPrice)!;
                                    FFAppState().update(() {});
                                  },
                                  text: '+',
                                  options: FFButtonOptions(
                                    width: 52.0,
                                    height: 52.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0x00D9D9D9),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 2.0)),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 8.0,
                            buttonSize: 52.0,
                            fillColor: const Color(0xFFB6000C),
                            icon: Icon(
                              Icons.delete,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().cartTotalPrice =
                                  functions.deductCartTotalPrice(
                                      _model.itemTotalPrice!,
                                      FFAppState().cartTotalPrice)!;
                              FFAppState().update(() {});
                              await actions.deleteInCart(
                                widget.cartItemID,
                                widget.menuItemId,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF9FAFD),
                borderRadius: BorderRadius.circular(6.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 1.5,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          valueOrDefault<String>(
                            widget.cartItemName,
                            'name',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            AutoSizeText(
                              '₱',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AutoSizeText(
                              valueOrDefault<String>(
                                widget.cartItemPrice?.toString(),
                                '15',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AutoSizeText(
                              ' x ',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AutoSizeText(
                              valueOrDefault<String>(
                                _model.itemQuantity.toString(),
                                '1',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AutoSizeText(
                              ':',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AutoSizeText(
                              '₱',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            AutoSizeText(
                              valueOrDefault<String>(
                                _model.itemTotalPrice?.toString(),
                                '1',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Nunito',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (_model.itemQuantity > 1) {
                                      _model.itemQuantity =
                                          _model.itemQuantity + -1;
                                      safeSetState(() {});
                                      await actions.decrementItemQuantity(
                                        widget.cartItemID,
                                        widget.menuItemId,
                                      );
                                      _model.itemTotalPrice =
                                          functions.itemTotalPriceComputation(
                                              widget.cartItemPrice!,
                                              _model.itemQuantity);
                                      safeSetState(() {});
                                      FFAppState().cartTotalPrice =
                                          functions.deductCartTotalPrice(
                                              widget.cartItemPrice!,
                                              FFAppState().cartTotalPrice)!;
                                      FFAppState().update(() {});
                                    }
                                  },
                                  text: '-',
                                  options: FFButtonOptions(
                                    width: 52.0,
                                    height: 52.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0x00D9D9D9),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      _model.itemQuantity.toString(),
                                      '1',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    _model.itemQuantity =
                                        _model.itemQuantity + 1;
                                    safeSetState(() {});
                                    await actions.incrementItemQuantity(
                                      widget.cartItemID,
                                      widget.menuItemId,
                                    );
                                    _model.itemTotalPrice =
                                        functions.itemTotalPriceComputation(
                                            widget.cartItemPrice!,
                                            _model.itemQuantity);
                                    safeSetState(() {});
                                    FFAppState().cartTotalPrice =
                                        FFAppState().cartTotalPrice +
                                            widget.cartItemPrice!;
                                    FFAppState().update(() {});
                                  },
                                  text: '+',
                                  options: FFButtonOptions(
                                    width: 52.0,
                                    height: 52.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0x00D9D9D9),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 2.0)),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 8.0,
                            buttonSize: 52.0,
                            fillColor: const Color(0xFFB6000C),
                            icon: Icon(
                              Icons.delete,
                              color: FlutterFlowTheme.of(context).info,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              FFAppState().cartTotalPrice =
                                  functions.deductCartTotalPrice(
                                      _model.itemTotalPrice!,
                                      FFAppState().cartTotalPrice)!;
                              FFAppState().update(() {});
                              await actions.deleteInCart(
                                widget.cartItemID,
                                widget.menuItemId,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
