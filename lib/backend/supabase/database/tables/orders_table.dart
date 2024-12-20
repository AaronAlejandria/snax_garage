import '../database.dart';

class OrdersTableTable extends SupabaseTable<OrdersTableRow> {
  @override
  String get tableName => 'orders_table';

  @override
  OrdersTableRow createRow(Map<String, dynamic> data) => OrdersTableRow(data);
}

class OrdersTableRow extends SupabaseDataRow {
  OrdersTableRow(super.data);

  @override
  SupabaseTable get table => OrdersTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get orderStatus => getField<String>('order_status');
  set orderStatus(String? value) => setField<String>('order_status', value);

  double? get sales => getField<double>('sales');
  set sales(double? value) => setField<double>('sales', value);
}
