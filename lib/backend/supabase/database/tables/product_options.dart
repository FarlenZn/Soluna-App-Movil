import '../database.dart';

class ProductOptionsTable extends SupabaseTable<ProductOptionsRow> {
  @override
  String get tableName => 'product_options';

  @override
  ProductOptionsRow createRow(Map<String, dynamic> data) =>
      ProductOptionsRow(data);
}

class ProductOptionsRow extends SupabaseDataRow {
  ProductOptionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductOptionsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  int get price => getField<int>('price')!;
  set price(int value) => setField<int>('price', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  int? get sortOrder => getField<int>('sort_order');
  set sortOrder(int? value) => setField<int>('sort_order', value);
}
