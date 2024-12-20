import '../database.dart';

class MainCategoryTable extends SupabaseTable<MainCategoryRow> {
  @override
  String get tableName => 'main_category';

  @override
  MainCategoryRow createRow(Map<String, dynamic> data) => MainCategoryRow(data);
}

class MainCategoryRow extends SupabaseDataRow {
  MainCategoryRow(super.data);

  @override
  SupabaseTable get table => MainCategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
