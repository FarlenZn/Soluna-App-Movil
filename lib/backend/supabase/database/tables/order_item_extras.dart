import '../database.dart';

class OrderItemExtrasTable extends SupabaseTable<OrderItemExtrasRow> {
  @override
  String get tableName => 'order_item_extras';

  @override
  OrderItemExtrasRow createRow(Map<String, dynamic> data) =>
      OrderItemExtrasRow(data);
}

class OrderItemExtrasRow extends SupabaseDataRow {
  OrderItemExtrasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderItemExtrasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get orderItemId => getField<int>('order_item_id')!;
  set orderItemId(int value) => setField<int>('order_item_id', value);

  int? get extraId => getField<int>('extra_id');
  set extraId(int? value) => setField<int>('extra_id', value);

  String get extraName => getField<String>('extra_name')!;
  set extraName(String value) => setField<String>('extra_name', value);

  int get unitPrice => getField<int>('unit_price')!;
  set unitPrice(int value) => setField<int>('unit_price', value);
}
