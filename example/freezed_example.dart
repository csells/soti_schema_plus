import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soti_schema_plus/annotations.dart';

part 'freezed_example.freezed.dart';
part 'freezed_example.g.dart';

void main() {
  const encoder = JsonEncoder.withIndent('  ');
  print('Freezed Model Schema:');
  print('------------------------');
  print(encoder.convert(jsonDecode(FreezedPerson.schema)));
  print('');

  print('Documented Model Schema:');
  print('---------------------------');
  final docSchema = jsonDecode(DocumentedPerson.schema);
  print(encoder.convert(docSchema));
  print('');

  print('7. Product Model Schema:');
  print('------------------------');
  final prodSchema = jsonDecode(Product.schema);
  print(encoder.convert(prodSchema));
  print('');

  final person = FreezedPerson(
    name: 'John Doe',
    age: 30,
    hobbies: ['reading', 'coding', 'hiking'],
  );
  print('FreezedPerson:');
  print(encoder.convert(person.toJson()));

  final product = Product(
    productId: 'PROD-001',
    name: 'Wireless Mouse',
    description: 'Ergonomic wireless mouse with long battery life',
    price: 29.99,
    stockQuantity: 150,
    categories: ['Electronics', 'Computer Accessories'],
    tags: ['wireless', 'mouse', 'ergonomic', 'bluetooth'],
    dimensions: {'length': 12.0, 'width': 6.5, 'height': 4.0},
    weight: 0.095,
    manufacturer: 'TechGear Inc.',
    releaseDate: DateTime(2024, 1, 15),
    warrantyMonths: 24,
  );
  print('\nProduct:');
  print(encoder.convert(product.toJson()));
}

// Basic Freezed Model
@freezed
@SotiSchema()
abstract class FreezedPerson with _$FreezedPerson {
  const FreezedPerson._();
  const factory FreezedPerson({
    @Default('') String name,
    @Default(0) int age,
    @Default([]) List<String> hobbies,
  }) = _FreezedPerson;

  factory FreezedPerson.fromJson(Map<String, dynamic> json) =>
      _$FreezedPersonFromJson(json);

  @jsonSchema
  static String get schema => _$FreezedPersonSchema;
}

// Freezed Model with Doc Comments for Descriptions
@freezed
@SotiSchema()
abstract class DocumentedPerson with _$DocumentedPerson {
  const DocumentedPerson._();
  const factory DocumentedPerson({
    /// The full name of the person.
    @Default('') String name,

    /// The age of the person in years.
    @Default(0) int age,

    /// A list of hobbies the person enjoys.
    @Default([]) List<String> hobbies,

    /// The person's email address.
    String? email,

    /// Whether the person is currently active.
    @Default(true) bool isActive,
  }) = _DocumentedPerson;

  factory DocumentedPerson.fromJson(Map<String, dynamic> json) =>
      _$DocumentedPersonFromJson(json);

  @jsonSchema
  static String get schema => _$DocumentedPersonSchema;
}

// Product Catalog with Various Data Types
@freezed
@SotiSchema()
abstract class Product with _$Product {
  const Product._();
  const factory Product({
    /// Unique product identifier
    required String productId,

    /// Product name
    required String name,

    /// Product description
    String? description,

    /// Price in USD
    required double price,

    /// Number of items in stock
    @Default(0) int stockQuantity,

    /// Product categories
    @Default([]) List<String> categories,

    /// Product tags for search
    @Default([]) List<String> tags,

    /// Is the product available for sale
    @Default(true) bool isAvailable,

    /// Product dimensions in centimeters
    Map<String, double>? dimensions,

    /// Product weight in kilograms
    double? weight,

    /// Product manufacturer
    String? manufacturer,

    /// Product release date
    DateTime? releaseDate,

    /// Product warranty period in months
    int? warrantyMonths,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  @jsonSchema
  static String get schema => _$ProductSchema;

  @jsonSchema
  static Map<String, dynamic> get schemaMap => _$ProductSchemaMap;
}
