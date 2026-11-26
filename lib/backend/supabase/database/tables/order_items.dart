import '../database.dart';

class OrderItemsTable extends SupabaseTable<OrderItemsRow> {
  @override
  String get tableName => 'order_items';

  @override
  OrderItemsRow createRow(Map<String, dynamic> data) => OrderItemsRow(data);
}

class OrderItemsRow extends SupabaseDataRow {
  OrderItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderItemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get orderId => getField<int>('order_id')!;
  set orderId(int value) => setField<int>('order_id', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  int? get optionId => getField<int>('option_id');
  set optionId(int? value) => setField<int>('option_id', value);

  String get productName => getField<String>('product_name')!;
  set productName(String value) => setField<String>('product_name', value);

  String get optionName => getField<String>('option_name')!;
  set optionName(String value) => setField<String>('option_name', value);

  int get unitPrice => getField<int>('unit_price')!;
  set unitPrice(int value) => setField<int>('unit_price', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  int? get subtotal => getField<int>('subtotal');
  set subtotal(int? value) => setField<int>('subtotal', value);
}
