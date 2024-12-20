import '../database.dart';

class OrderItemsTable extends SupabaseTable<OrderItemsRow> {
  @override
  String get tableName => 'order_items';

  @override
  OrderItemsRow createRow(Map<String, dynamic> data) => OrderItemsRow(data);
}

class OrderItemsRow extends SupabaseDataRow {
  OrderItemsRow(super.data);

  @override
  SupabaseTable get table => OrderItemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get ordersTableId => getField<int>('orders_table_id');
  set ordersTableId(int? value) => setField<int>('orders_table_id', value);

  String? get ordersItemName => getField<String>('orders_item_name');
  set ordersItemName(String? value) =>
      setField<String>('orders_item_name', value);

  String? get ordersItemSize => getField<String>('orders_item_size');
  set ordersItemSize(String? value) =>
      setField<String>('orders_item_size', value);

  int? get ordersItemQuantity => getField<int>('orders_item_quantity');
  set ordersItemQuantity(int? value) =>
      setField<int>('orders_item_quantity', value);

  String? get ordersItemSugarLevel =>
      getField<String>('orders_item_sugarLevel');
  set ordersItemSugarLevel(String? value) =>
      setField<String>('orders_item_sugarLevel', value);

  double? get ordersItemPrice => getField<double>('orders_Item_price');
  set ordersItemPrice(double? value) =>
      setField<double>('orders_Item_price', value);

  int? get ordersItemId => getField<int>('orders_item_id');
  set ordersItemId(int? value) => setField<int>('orders_item_id', value);

  double? get orderItemTotalSales => getField<double>('order_item_total_sales');
  set orderItemTotalSales(double? value) =>
      setField<double>('order_item_total_sales', value);
}
