import '../database.dart';

class ItemSalesTable extends SupabaseTable<ItemSalesRow> {
  @override
  String get tableName => 'item_sales';

  @override
  ItemSalesRow createRow(Map<String, dynamic> data) => ItemSalesRow(data);
}

class ItemSalesRow extends SupabaseDataRow {
  ItemSalesRow(super.data);

  @override
  SupabaseTable get table => ItemSalesTable();

  int? get idItem => getField<int>('id_item');
  set idItem(int? value) => setField<int>('id_item', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get totalQuantity => getField<int>('total_quantity');
  set totalQuantity(int? value) => setField<int>('total_quantity', value);

  double? get totalSales => getField<double>('total_sales');
  set totalSales(double? value) => setField<double>('total_sales', value);
}
