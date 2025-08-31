import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soti_schema_plus/annotations.dart';

part 'main.g.dart';

// JsonSerializable Model with Multiple Schema Formats
@SotiSchema()
@JsonSerializable()
class JsonPerson {
  final String name;
  final int age;
  final List<String> hobbies;

  JsonPerson({this.name = '', this.age = 0, this.hobbies = const []});

  factory JsonPerson.fromJson(Map<String, dynamic> json) =>
      _$JsonPersonFromJson(json);

  Map<String, dynamic> toJson() => _$JsonPersonToJson(this);

  @jsonSchema
  static String get schema => _$JsonPersonSchema;

  @jsonSchema
  static Map<String, dynamic> get schemaMap => _$JsonPersonSchemaMap;
}

// Complex JsonSerializable Model with Nested Objects
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

void main() {
  print('JsonSerializable Model Schema (String):');
  print('------------------------------------------');
  print(JsonPerson.schema);
  print('');

  print('JsonSerializable Model Schema (Map):');
  print('---------------------------------------');
  print(jsonEncode(JsonPerson.schemaMap));
  print('');

  print('Employee Model Schema:');
  print('-------------------------');
  final empSchema = jsonDecode(Employee.schemaString);
  print(jsonEncode(empSchema));
  print('');

  print('Address Model Schema:');
  print('------------------------');
  final addrSchema = jsonDecode(Address.schema);
  print(jsonEncode(addrSchema));
  print('');

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
  print('\nEmployee: ${jsonEncode(employee.toJson())}');
}
