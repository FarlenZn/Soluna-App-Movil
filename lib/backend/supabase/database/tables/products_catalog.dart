import '../database.dart';

class ProductsCatalogTable extends SupabaseTable<ProductsCatalogRow> {
  @override
  String get tableName => 'products_catalog';

  @override
  ProductsCatalogRow createRow(Map<String, dynamic> data) =>
      ProductsCatalogRow(data);
}

class ProductsCatalogRow extends SupabaseDataRow {
  ProductsCatalogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductsCatalogTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  String? get categoryName => getField<String>('category_name');
  set categoryName(String? value) => setField<String>('category_name', value);

  int? get categoryOrder => getField<int>('category_order');
  set categoryOrder(int? value) => setField<int>('category_order', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  bool? get isSpecial => getField<bool>('is_special');
  set isSpecial(bool? value) => setField<bool>('is_special', value);

  bool? get isVegetarian => getField<bool>('is_vegetarian');
  set isVegetarian(bool? value) => setField<bool>('is_vegetarian', value);

  bool? get isAvailable => getField<bool>('is_available');
  set isAvailable(bool? value) => setField<bool>('is_available', value);

  int? get priceFrom => getField<int>('price_from');
  set priceFrom(int? value) => setField<int>('price_from', value);
}
