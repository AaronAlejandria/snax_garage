import '../database.dart';

class SubCategoryTable extends SupabaseTable<SubCategoryRow> {
  @override
  String get tableName => 'sub_category';

  @override
  SubCategoryRow createRow(Map<String, dynamic> data) => SubCategoryRow(data);
}

class SubCategoryRow extends SupabaseDataRow {
  SubCategoryRow(super.data);

  @override
  SupabaseTable get table => SubCategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get mainCategoryId => getField<int>('main_category_id');
  set mainCategoryId(int? value) => setField<int>('main_category_id', value);
}
