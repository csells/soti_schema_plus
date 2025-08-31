// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_example.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FreezedPerson _$FreezedPersonFromJson(Map<String, dynamic> json) =>
    _FreezedPerson(
      name: json['name'] as String? ?? '',
      age: (json['age'] as num?)?.toInt() ?? 0,
      hobbies:
          (json['hobbies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FreezedPersonToJson(_FreezedPerson instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'hobbies': instance.hobbies,
    };

_DocumentedPerson _$DocumentedPersonFromJson(Map<String, dynamic> json) =>
    _DocumentedPerson(
      name: json['name'] as String? ?? '',
      age: (json['age'] as num?)?.toInt() ?? 0,
      hobbies:
          (json['hobbies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      email: json['email'] as String?,
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$DocumentedPersonToJson(_DocumentedPerson instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'hobbies': instance.hobbies,
      'email': instance.email,
      'isActive': instance.isActive,
    };

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  productId: json['productId'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  price: (json['price'] as num).toDouble(),
  stockQuantity: (json['stockQuantity'] as num?)?.toInt() ?? 0,
  categories:
      (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  isAvailable: json['isAvailable'] as bool? ?? true,
  dimensions: (json['dimensions'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  weight: (json['weight'] as num?)?.toDouble(),
  manufacturer: json['manufacturer'] as String?,
  releaseDate:
      json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
  warrantyMonths: (json['warrantyMonths'] as num?)?.toInt(),
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'productId': instance.productId,
  'name': instance.name,
  'description': instance.description,
  'price': instance.price,
  'stockQuantity': instance.stockQuantity,
  'categories': instance.categories,
  'tags': instance.tags,
  'isAvailable': instance.isAvailable,
  'dimensions': instance.dimensions,
  'weight': instance.weight,
  'manufacturer': instance.manufacturer,
  'releaseDate': instance.releaseDate?.toIso8601String(),
  'warrantyMonths': instance.warrantyMonths,
};

// **************************************************************************
// SotiSchemaGenerator
// **************************************************************************

const _$FreezedPersonSchema =
    r'''{"$schema":"https://json-schema.org/draft/2020-12/schema","type":"object","properties":{"name":{"type":"string","default":""},"age":{"type":"integer","default":0},"hobbies":{"type":"array","items":{"type":"string"},"default":[]}},"$defs":{}}''';

const _$DocumentedPersonSchema =
    r'''{"$schema":"https://json-schema.org/draft/2020-12/schema","type":"object","properties":{"name":{"type":"string","default":""},"age":{"type":"integer","default":0},"hobbies":{"type":"array","items":{"type":"string"},"default":[]},"email":{"type":"string"},"isActive":{"type":"boolean","default":true}},"$defs":{}}''';

const _$ProductSchema =
    r'''{"$schema":"https://json-schema.org/draft/2020-12/schema","type":"object","properties":{"productId":{"type":"string"},"name":{"type":"string"},"description":{"type":"string"},"price":{"type":"number"},"stockQuantity":{"type":"integer","default":0},"categories":{"type":"array","items":{"type":"string"},"default":[]},"tags":{"type":"array","items":{"type":"string"},"default":[]},"isAvailable":{"type":"boolean","default":true},"dimensions":{"type":"object","additionalProperties":{"type":"number"}},"weight":{"type":"number"},"manufacturer":{"type":"string"},"releaseDate":{"type":"string","format":"date-time"},"warrantyMonths":{"type":"integer"}},"required":["productId","name","price"],"$defs":{}}''';
const _$ProductSchemaMap = <String, dynamic>{
  r'''$schema''': r'''https://json-schema.org/draft/2020-12/schema''',
  r'''type''': r'''object''',
  r'''properties''': {
    r'''productId''': {r'''type''': r'''string'''},
    r'''name''': {r'''type''': r'''string'''},
    r'''description''': {r'''type''': r'''string'''},
    r'''price''': {r'''type''': r'''number'''},
    r'''stockQuantity''': {r'''type''': r'''integer''', r'''default''': 0},
    r'''categories''': {
      r'''type''': r'''array''',
      r'''items''': {r'''type''': r'''string'''},
      r'''default''': [],
    },
    r'''tags''': {
      r'''type''': r'''array''',
      r'''items''': {r'''type''': r'''string'''},
      r'''default''': [],
    },
    r'''isAvailable''': {r'''type''': r'''boolean''', r'''default''': true},
    r'''dimensions''': {
      r'''type''': r'''object''',
      r'''additionalProperties''': {r'''type''': r'''number'''},
    },
    r'''weight''': {r'''type''': r'''number'''},
    r'''manufacturer''': {r'''type''': r'''string'''},
    r'''releaseDate''': {
      r'''type''': r'''string''',
      r'''format''': r'''date-time''',
    },
    r'''warrantyMonths''': {r'''type''': r'''integer'''},
  },
  r'''required''': [r'''productId''', r'''name''', r'''price'''],
  r'''$defs''': {},
};
