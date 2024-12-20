import '/components/cart_tile/cart_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_coloumn_model.dart';
export 'cart_coloumn_model.dart';

class CartColoumnWidget extends StatefulWidget {
  const CartColoumnWidget({super.key});

  @override
  State<CartColoumnWidget> createState() => _CartColoumnWidgetState();
}

class _CartColoumnWidgetState extends State<CartColoumnWidget> {
  late CartColoumnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartColoumnModel());
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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
      child: Builder(
        builder: (context) {
          final cartColoumn = FFAppState().cartList.toList();

          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(cartColoumn.length, (cartColoumnIndex) {
                final cartColoumnItem = cartColoumn[cartColoumnIndex];
                return CartTileWidget(
                  key: Key(
                      'Keya8m_${cartColoumnIndex}_of_${cartColoumn.length}'),
                  cartItemName: cartColoumnItem.cartItemName,
                  cartItemID: cartColoumnItem.cartItemId,
                  cartItemPrice: cartColoumnItem.cartItemPrice,
                  cartItemSize: cartColoumnItem.cartItemSize,
                  cartItemSugarLevel: cartColoumnItem.cartItemSugarLevel,
                  cartMultiplePrice: cartColoumnItem.cartMultipleprice,
                  menuItemId: cartColoumnItem.menuItemId,
                  cartItemQuantity: cartColoumnItem.cartItemQuantity,
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
