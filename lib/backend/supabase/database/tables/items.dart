import '../database.dart';

class ItemsTable extends SupabaseTable<ItemsRow> {
  @override
  String get tableName => 'items';

  @override
  ItemsRow createRow(Map<String, dynamic> data) => ItemsRow(data);
}

class ItemsRow extends SupabaseDataRow {
  ItemsRow(super.data);

  @override
  SupabaseTable get table => ItemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get subCategoryId => getField<int>('sub_category_id');
  set subCategoryId(int? value) => setField<int>('sub_category_id', value);

  bool? get multiplePrice => getField<bool>('multiple_price');
  set multiplePrice(bool? value) => setField<bool>('multiple_price', value);

  double? get price1 => getField<double>('price_1');
  set price1(double? value) => setField<double>('price_1', value);

  double? get price2 => getField<double>('price_2');
  set price2(double? value) => setField<double>('price_2', value);
}
