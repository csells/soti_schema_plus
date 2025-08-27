import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:soti_schema_plus/annotations.dart';

part 'main.freezed.dart';
part 'main.g.dart';

// ============================================================================
// Example 1: Basic Freezed Model
// ============================================================================

@freezed
@SotiSchema()
class FreezedPerson with _$FreezedPerson {
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

// ============================================================================
// Example 2: JsonSerializable Model with Multiple Schema Formats
// ============================================================================

@SotiSchema()
@JsonSerializable()
class JsonPerson {
  final String name;
  final int age;
  final List<String> hobbies;

  JsonPerson({
    this.name = '',
    this.age = 0,
    this.hobbies = const [],
  });

  factory JsonPerson.fromJson(Map<String, dynamic> json) =>
      _$JsonPersonFromJson(json);

  Map<String, dynamic> toJson() => _$JsonPersonToJson(this);

  @jsonSchema
  static String get schema => _$JsonPersonSchema;

  @jsonSchema
  static Map<String, dynamic> get schemaMap => _$JsonPersonSchemaMap;
}

// ============================================================================
// Example 3: Freezed Model with Doc Comments for Descriptions
// ============================================================================

@freezed
@SotiSchema()
class DocumentedPerson with _$DocumentedPerson {
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

// ============================================================================
// Example 4: Complex JsonSerializable Model with Nested Objects
// ============================================================================

@SotiSchema()
@JsonSerializable()
class Address {
  /// Street address line
  final String street;
  
  /// City name
  final String city;
  
  /// State or province
  final String? state;
  
  /// Postal/ZIP code
  final String? postalCode;
  
  /// Country name
  final String country;

  Address({
    required this.street,
    required this.city,
    this.state,
    this.postalCode,
    required this.country,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @jsonSchema
  static String get schema => _$AddressSchema;
}

@SotiSchema()
@JsonSerializable()
class Employee {
  /// Employee's full name
  final String name;
  
  /// Employee ID number
  final int employeeId;
  
  /// Department name
  final String department;
  
  /// Employee's work email
  final String email;
  
  /// Employee's office address
  final Address? officeAddress;
  
  /// List of skills
  final List<String> skills;
  
  /// Years of experience
  final double yearsOfExperience;
  
  /// Is the employee currently active
  final bool isActive;
  
  /// Hire date
  final DateTime hireDate;

  Employee({
    required this.name,
    required this.employeeId,
    required this.department,
    required this.email,
    this.officeAddress,
    this.skills = const [],
    this.yearsOfExperience = 0.0,
    this.isActive = true,
    required this.hireDate,
  });

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeToJson(this);

  // Example of flexible schema naming
  @jsonSchema
  static String get schemaString => _$EmployeeSchema;

  @jsonSchema
  static Map<String, dynamic> get schemaObject => _$EmployeeSchemaMap;
}

// ============================================================================
// Example 5: Product Catalog with Various Data Types
// ============================================================================

@freezed
@SotiSchema()
class Product with _$Product {
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

// ============================================================================
// Main Function - Demonstrates Usage
// ============================================================================

void main() {
  print('=== SotiSchema Plus Examples ===\n');

  // Example 1: Basic Freezed Model
  print('1. Freezed Model Schema:');
  print('------------------------');
  // Once generated, this will print the JSON schema
  // print(FreezedPerson.schema);
  print('Schema will be available after running build_runner\n');

  // Example 2: JsonSerializable Model
  print('2. JsonSerializable Model Schema (String):');
  print('------------------------------------------');
  // print(JsonPerson.schema);
  print('Schema string will be available after running build_runner\n');

  print('3. JsonSerializable Model Schema (Map):');
  print('---------------------------------------');
  // print(jsonEncode(JsonPerson.schemaMap));
  print('Schema map will be available after running build_runner\n');

  // Example 3: Model with Documentation
  print('4. Documented Model Schema:');
  print('---------------------------');
  // print(DocumentedPerson.schema);
  print('Schema with descriptions will be available after running build_runner\n');

  // Example 4: Complex Nested Model
  print('5. Employee Model Schema:');
  print('-------------------------');
  // print(Employee.schemaString);
  print('Complex schema will be available after running build_runner\n');

  print('6. Address Model Schema:');
  print('------------------------');
  // print(Address.schema);
  print('Address schema will be available after running build_runner\n');

  // Example 5: Product Catalog
  print('7. Product Model Schema:');
  print('------------------------');
  // print(Product.schema);
  print('Product schema will be available after running build_runner\n');

  // Demonstrate creating and serializing objects
  print('\n=== Object Creation Examples ===\n');

  final person = FreezedPerson(
    name: 'John Doe',
    age: 30,
    hobbies: ['reading', 'coding', 'hiking'],
  );
  print('FreezedPerson: ${person.toJson()}');

  final employee = Employee(
    name: 'Jane Smith',
    employeeId: 12345,
    department: 'Engineering',
    email: 'jane.smith@example.com',
    skills: ['Dart', 'Flutter', 'TypeScript'],
    yearsOfExperience: 5.5,
    hireDate: DateTime(2019, 3, 15),
    officeAddress: Address(
      street: '123 Tech Street',
      city: 'San Francisco',
      state: 'CA',
      postalCode: '94105',
      country: 'USA',
    ),
  );
  print('\nEmployee: ${employee.toJson()}');

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
  print('\nProduct: ${product.toJson()}');

  print('\n=== Instructions ===');
  print('1. Run: dart pub get');
  print('2. Run: dart run build_runner build');
  print('3. Run: dart run example/main.dart');
  print('');
  print('This will generate all the necessary .g.dart and .freezed.dart files');
  print('and make the schema constants available for use.');
}
