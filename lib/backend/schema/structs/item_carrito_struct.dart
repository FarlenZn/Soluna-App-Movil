// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItemCarritoStruct extends BaseStruct {
  ItemCarritoStruct({
    int? optionId,
    String? productName,
    String? optionName,
    int? unitPrice,
    int? quantity,
    List<int>? extraIds,
    int? extrasTotal,
    String? productDescription,
    String? imageUrl,
  })  : _optionId = optionId,
        _productName = productName,
        _optionName = optionName,
        _unitPrice = unitPrice,
        _quantity = quantity,
        _extraIds = extraIds,
        _extrasTotal = extrasTotal,
        _productDescription = productDescription,
        _imageUrl = imageUrl;

  // "optionId" field.
  int? _optionId;
  int get optionId => _optionId ?? 0;
  set optionId(int? val) => _optionId = val;

  void incrementOptionId(int amount) => optionId = optionId + amount;

  bool hasOptionId() => _optionId != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "optionName" field.
  String? _optionName;
  String get optionName => _optionName ?? '';
  set optionName(String? val) => _optionName = val;

  bool hasOptionName() => _optionName != null;

  // "unitPrice" field.
  int? _unitPrice;
  int get unitPrice => _unitPrice ?? 0;
  set unitPrice(int? val) => _unitPrice = val;

  void incrementUnitPrice(int amount) => unitPrice = unitPrice + amount;

  bool hasUnitPrice() => _unitPrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "extraIds" field.
  List<int>? _extraIds;
  List<int> get extraIds => _extraIds ?? const [];
  set extraIds(List<int>? val) => _extraIds = val;

  void updateExtraIds(Function(List<int>) updateFn) {
    updateFn(_extraIds ??= []);
  }

  bool hasExtraIds() => _extraIds != null;

  // "extrasTotal" field.
  int? _extrasTotal;
  int get extrasTotal => _extrasTotal ?? 0;
  set extrasTotal(int? val) => _extrasTotal = val;

  void incrementExtrasTotal(int amount) => extrasTotal = extrasTotal + amount;

  bool hasExtrasTotal() => _extrasTotal != null;

  // "productDescription" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  set productDescription(String? val) => _productDescription = val;

  bool hasProductDescription() => _productDescription != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  static ItemCarritoStruct fromMap(Map<String, dynamic> data) =>
      ItemCarritoStruct(
        optionId: castToType<int>(data['optionId']),
        productName: data['productName'] as String?,
        optionName: data['optionName'] as String?,
        unitPrice: castToType<int>(data['unitPrice']),
        quantity: castToType<int>(data['quantity']),
        extraIds: getDataList(data['extraIds']),
        extrasTotal: castToType<int>(data['extrasTotal']),
        productDescription: data['productDescription'] as String?,
        imageUrl: data['imageUrl'] as String?,
      );

  static ItemCarritoStruct? maybeFromMap(dynamic data) => data is Map
      ? ItemCarritoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'optionId': _optionId,
        'productName': _productName,
        'optionName': _optionName,
        'unitPrice': _unitPrice,
        'quantity': _quantity,
        'extraIds': _extraIds,
        'extrasTotal': _extrasTotal,
        'productDescription': _productDescription,
        'imageUrl': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'optionId': serializeParam(
          _optionId,
          ParamType.int,
        ),
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'optionName': serializeParam(
          _optionName,
          ParamType.String,
        ),
        'unitPrice': serializeParam(
          _unitPrice,
          ParamType.int,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'extraIds': serializeParam(
          _extraIds,
          ParamType.int,
          isList: true,
        ),
        'extrasTotal': serializeParam(
          _extrasTotal,
          ParamType.int,
        ),
        'productDescription': serializeParam(
          _productDescription,
          ParamType.String,
        ),
        'imageUrl': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static ItemCarritoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ItemCarritoStruct(
        optionId: deserializeParam(
          data['optionId'],
          ParamType.int,
          false,
        ),
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        optionName: deserializeParam(
          data['optionName'],
          ParamType.String,
          false,
        ),
        unitPrice: deserializeParam(
          data['unitPrice'],
          ParamType.int,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        extraIds: deserializeParam<int>(
          data['extraIds'],
          ParamType.int,
          true,
        ),
        extrasTotal: deserializeParam(
          data['extrasTotal'],
          ParamType.int,
          false,
        ),
        productDescription: deserializeParam(
          data['productDescription'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['imageUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ItemCarritoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ItemCarritoStruct &&
        optionId == other.optionId &&
        productName == other.productName &&
        optionName == other.optionName &&
        unitPrice == other.unitPrice &&
        quantity == other.quantity &&
        listEquality.equals(extraIds, other.extraIds) &&
        extrasTotal == other.extrasTotal &&
        productDescription == other.productDescription &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        optionId,
        productName,
        optionName,
        unitPrice,
        quantity,
        const ListEquality().hash(extraIds),
        extrasTotal,
        productDescription,
        imageUrl
      ]);
}

ItemCarritoStruct createItemCarritoStruct({
  int? optionId,
  String? productName,
  String? optionName,
  int? unitPrice,
  int? quantity,
  int? extrasTotal,
  String? productDescription,
  String? imageUrl,
}) =>
    ItemCarritoStruct(
      optionId: optionId,
      productName: productName,
      optionName: optionName,
      unitPrice: unitPrice,
      quantity: quantity,
      extrasTotal: extrasTotal,
      productDescription: productDescription,
      imageUrl: imageUrl,
    );
