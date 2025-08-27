# soti_schema_plus

soti_schema_plus is a clone of https://github.com/shtse8/SotiSchema, which
appears to be abandoned. It provides for generating schemas directly from your
Dart data classes, whether you're working with `freezed` or `json_serializable`.

## 🚀 Getting Started

To make SotiSchema work with `freezed` and `json_serializable`, configure your
`build.yaml` file like this:

```yaml
targets:
  $default:
    builders:
      json_serializable:
        options:
          explicit_to_json: true

global_options:
  freezed|freezed:
    runs_before:
      - soti_schema|openApiBuilder
```

- **`explicit_to_json: true`** ensures that nested objects are correctly
  serialized by generating explicit `toJson` methods.
- **`runs_before`** guarantees that `freezed` runs before SotiSchema, ensuring
  that everything is in place when SotiSchema processes your classes.

---

## 💡 How to Use SotiSchema

### Example with `freezed`

Here’s how to generate a JSON schema using SotiSchema with a `freezed` class:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soti_schema/soti_schema.dart';

part 'example_model.freezed.dart';
part 'example_model.g.dart';

@freezed
@SotiSchema()
class ExampleModel with _$ExampleModel {
  const factory ExampleModel({
    @Default('') String name,
    @Default(0) int age,
    @Default([]) List<String> hobbies,
  }) = _ExampleModel;

  factory ExampleModel.fromJson(Map<String, dynamic> json) =>
      _$ExampleModelFromJson(json);

  @jsonSchema
  static String get schema => _$ExampleModelSchema;
}
```

### Example with `json_serializable`

Prefer `json_serializable`? SotiSchema has you covered:

```dart
import 'package:json_annotation/json_annotation.dart';
import 'package:soti_schema/soti_schema.dart';

part 'example_model.g.dart';

@SotiSchema()
@JsonSerializable()
class ExampleModel {
  final String name;
  final int age;
  final List<String> hobbies;

  ExampleModel({
    this.name = '',
    this.age = 0,
    this.hobbies = const [],
  });

  factory ExampleModel.fromJson(Map<String, dynamic> json) =>
      _$ExampleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExampleModelToJson(this);

  @jsonSchema
  static String get schema => _$ExampleModelSchema;

  @jsonSchema
  static Map<String, dynamic> get schemaMap => _$ExampleModelSchemaMap;
}
```

### Adding Descriptions to Your Schema

When generating schemas with SotiSchema, you can include descriptions for your
fields in two ways:

1. **Doc Comments**: Use regular Dart doc comments (`///`) above your class
   fields. SotiSchema will automatically extract these comments and include them
   as descriptions in the generated schema.

2. **`@Description` Annotation**: If you prefer more control or want to add
   descriptions that differ from your doc comments, you can use the
   `@Description` annotation. This approach allows you to provide explicit
   descriptions directly.

#### Example with Doc Comments

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soti_schema/soti_schema.dart';

part 'example_model.freezed.dart';
part 'example_model.g.dart';

@freezed
@SotiSchema()
class ExampleModel with _$ExampleModel {
  const factory ExampleModel({
    /// The name of the person.
    @Default('') String name,

    /// The age of the person in years.
    @Default(0) int age,

    /// A list of hobbies the person enjoys.
    @Default([]) List<String> hobbies,
  }) = _ExampleModel;

  factory ExampleModel.fromJson(Map<String, dynamic> json) =>
      _$ExampleModelFromJson(json);

  @jsonSchema
  static String get schema => _$ExampleModelSchema;
}
```

In this example, the doc comments will be used as descriptions in the generated
JSON schema.

#### Example with `@Description` Annotation

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soti_schema/soti_schema.dart';
import 'package:meta/meta.dart';

part 'example_model.freezed.dart';
part 'example_model.g.dart';

@freezed
@SotiSchema()
class ExampleModel with _$ExampleModel {
  const factory ExampleModel({
    @Description('The name of the person.')
    @Default('') String name,

    @Description('The age of the person in years.')
    @Default(0) int age,

    @Description('A list of hobbies the person enjoys.')
    @Default([]) List<String> hobbies,
  }) = _ExampleModel;

  factory ExampleModel.fromJson(Map<String, dynamic> json) =>
      _$ExampleModelFromJson(json);

  @jsonSchema
  static String get schema => _$ExampleModelSchema;
}
```

In this example, the `@Description` annotations will be used as descriptions in
the generated JSON schema.

### Flexible Schema Naming

With SotiSchema, you have the freedom to name your schema methods however you
like and choose between returning a `String` or `Map<String, dynamic>`.
SotiSchema adapts to your needs:

```dart
@jsonSchema
static String get customSchemaName => _$ExampleModelSchema;

@jsonSchema
static Map<String, dynamic> get anotherSchema => _$ExampleModelSchemaMap;
```
