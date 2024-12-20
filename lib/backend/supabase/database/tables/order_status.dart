import '../database.dart';

class OrderStatusTable extends SupabaseTable<OrderStatusRow> {
  @override
  String get tableName => 'order_status';

  @override
  OrderStatusRow createRow(Map<String, dynamic> data) => OrderStatusRow(data);
}

class OrderStatusRow extends SupabaseDataRow {
  OrderStatusRow(super.data);

  @override
  SupabaseTable get table => OrderStatusTable();

  String? get orderStatus => getField<String>('order_status');
  set orderStatus(String? value) => setField<String>('order_status', value);
}
