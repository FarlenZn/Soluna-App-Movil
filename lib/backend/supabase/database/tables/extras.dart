import '../database.dart';

class ExtrasTable extends SupabaseTable<ExtrasRow> {
  @override
  String get tableName => 'extras';

  @override
  ExtrasRow createRow(Map<String, dynamic> data) => ExtrasRow(data);
}

class ExtrasRow extends SupabaseDataRow {
  ExtrasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExtrasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get categoryId => getField<int>('category_id')!;
  set categoryId(int value) => setField<int>('category_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  int get price => getField<int>('price')!;
  set price(int value) => setField<int>('price', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);
}
