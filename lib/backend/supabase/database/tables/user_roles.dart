import '../database.dart';

class UserRolesTable extends SupabaseTable<UserRolesRow> {
  @override
  String get tableName => 'user_roles';

  @override
  UserRolesRow createRow(Map<String, dynamic> data) => UserRolesRow(data);
}

class UserRolesRow extends SupabaseDataRow {
  UserRolesRow(super.data);

  @override
  SupabaseTable get table => UserRolesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userRole => getField<String>('user_role');
  set userRole(String? value) => setField<String>('user_role', value);
}
