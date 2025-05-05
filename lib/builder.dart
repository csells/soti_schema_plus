import 'dart:async';
import 'dart:convert';

import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/constant/value.dart';
// We need to keep the old element API import because source_gen's GeneratorForAnnotation
// still uses the old API. We're implementing adapters to bridge between the two APIs.
// ignore: deprecated_member_use
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:source_gen/source_gen.dart';

import 'annotations.dart';

/// Adapter layer for Element2 to Element conversion
/// This helps us bridge the new Element2 API with tools expecting the old Element API
class ElementAdapter {
  /// Convert an Element2 to a legacy Element if possible
  // ignore: deprecated_member_use
  static Element? toElement(Element2 element2) {
    // Many Element2 implementations have a 'baseElement' property that returns the legacy Element
    if (element2 is ClassElement2) {
      return _getBaseElementViaReflection(element2);
    } else if (element2 is FieldElement2) {
      return _getBaseElementViaReflection(element2);
    } else if (element2 is MethodElement2) {
      return _getBaseElementViaReflection(element2);
    } else if (element2 is GetterElement) {
      return _getBaseElementViaReflection(element2);
    } else if (element2 is SetterElement) {
      return _getBaseElementViaReflection(element2);
    } else if (element2 is ConstructorElement2) {
      return _getBaseElementViaReflection(element2);
    } else if (element2 is EnumElement2) {
      return _getBaseElementViaReflection(element2);
    } else if (element2 is FormalParameterElement) {
      return _getBaseElementViaReflection(element2);
    }

    // Last resort fallback - might not work for all element types
    return _getBaseElementViaReflection(element2);
  }

  /// Try to get the baseElement property via reflection
  // ignore: deprecated_member_use
  static Element? _getBaseElementViaReflection(Element2 element2) {
    try {
      final dynamic dynElement = element2;
      final baseElement = dynElement.baseElement;
      // ignore: deprecated_member_use
      return baseElement is Element ? baseElement : null;
    } catch (e) {
      return null;
    }
  }

  /// Get documentation from an Element2, checking fragment first
  static String? getDocumentation(Element2 element2) {
    final fragment = element2.firstFragment;

    // Try to get documentation from fragment's comment
    final String? comment = _getFragmentComment(fragment);
    if (comment != null && comment.isNotEmpty) {
      return comment;
    }

    // Fallback to legacy element's documentation
    // ignore: deprecated_member_use
    final legacyElement = toElement(element2);
    if (legacyElement != null && legacyElement.documentationComment != null) {
      return legacyElement.documentationComment!
          .replaceAll(
              RegExp(r'^\s*\/\*\*\s*|\s*\*\/\s*$|\s*\*\s?', multiLine: true),
              '')
          .trim();
    }

    return null;
  }

  /// Extract documentation comment from fragment
  static String? _getFragmentComment(Fragment fragment) {
    try {
      // Try direct access to documentationComment property via dynamic
      final dynamic dynFragment = fragment;
      final comment = dynFragment.documentationComment as String?;
      if (comment != null && comment.isNotEmpty) {
        return comment
            .replaceAll(
                RegExp(r'^\s*\/\*\*\s*|\s*\*\/\s*$|\s*\*\s?', multiLine: true),
                '')
            .trim();
      }

      // If direct access doesn't work, try to get the comment from the fragment's node
      final node = dynFragment.node;
      if (node != null) {
        final commentNode = node.documentationComment;
        if (commentNode != null) {
          return commentNode.tokens
              .map((token) => token.lexeme)
              .join('\n')
              .replaceAll(
                  RegExp(r'^\s*\/\*\*\s*|\s*\*\/\s*$|\s*\*\s?',
                      multiLine: true),
                  '')
              .trim();
        }
      }
    } catch (e) {
      // Ignore reflection errors
    }

    return null;
  }

  /// Check if an Element2 has an annotation of a specific type
  static bool hasAnnotationOf(Element2 element2, TypeChecker checker) {
    // First try to convert to legacy Element
    final legacyElement = toElement(element2);
    if (legacyElement != null) {
      return checker.hasAnnotationOf(legacyElement);
    }

    // If that fails, try reflection
    try {
      final dynamic dynElement = element2;
      final metadata = dynElement.metadata as List<dynamic>?;

      if (metadata != null) {
        for (final anno in metadata) {
          final type = anno.elementAnnotation?.computeConstantValue()?.type;
          if (type != null && checker.isExactlyType(type)) {
            return true;
          }
        }
      }
    } catch (e) {
      // Ignore reflection errors
    }

    return false;
  }

  /// Get the first annotation of a specific type from an Element2
  static DartObject? firstAnnotationOf(Element2 element2, TypeChecker checker) {
    // Try to convert to legacy Element first
    final legacyElement = toElement(element2);
    if (legacyElement != null) {
      return checker.firstAnnotationOf(legacyElement);
    }

    // If that fails, try reflection
    try {
      final dynamic dynElement = element2;
      final metadata = dynElement.metadata as List<dynamic>?;

      if (metadata != null) {
        for (final anno in metadata) {
          final constValue = anno.elementAnnotation?.computeConstantValue();
          final type = constValue?.type;
          if (type != null && checker.isExactlyType(type)) {
            return constValue;
          }
        }
      }
    } catch (e) {
      // Ignore reflection errors
    }

    return null;
  }
}

enum DataClassType {
  jsonSerializable,
  freezed,
  unsupported,
}

class PropertyInfo {
  final String name;
  final DartType type;
  final bool isRequired;
  final DartObject? defaultValue;
  final String? description;

  const PropertyInfo(
    this.name,
    this.type, {
    required this.isRequired,
    this.defaultValue,
    this.description,
  });
}

class SotiSchemaGenerator extends GeneratorForAnnotation<SotiSchema> {
  static const _typeCheckers = TypeCheckers();

  final _schemaGenerator = JsonSchemaGenerator();

  @override
  // ignore: deprecated_member_use
  FutureOr<String> generateForAnnotatedElement(
    // ignore: deprecated_member_use
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    // Convert Element to Element2
    // This is a special case - for the GeneratorForAnnotation, we get the old Element API
    // So we need to find the corresponding Element2
    ClassElement2? element2;

    // We'll try to find the corresponding Element2 through our adapter
    element2 = await _findCorrespondingElement2(element, buildStep);

    if (element2 == null) {
      throw InvalidGenerationSourceError(
          'Could not convert to ClassElement2: ${element.displayName}');
    }

    final buffer = StringBuffer();

    // Use Element2 API with children2 to get all getters
    for (final accessor in element2.children2
        .whereType<GetterElement>()
        .where((f) => f.isStatic)) {
      if (ElementAdapter.hasAnnotationOf(
          accessor, _typeCheckers.jsonSchemaChecker)) {
        final schema = _schemaGenerator.generateSchema(element2);
        final name = await _getRedirectedVariableName(accessor, buildStep);
        if (name == null) {
          throw InvalidGenerationSourceError(
              'Failed to extract redirected variable name for ${accessor.displayName}.');
        }
        _writeSchemaToBuffer(buffer, name, accessor.returnType, schema);
      }
    }
    return buffer.toString();
  }

  // Find corresponding Element2 for an Element
  // ignore: deprecated_member_use
  Future<ClassElement2?> _findCorrespondingElement2(
      // ignore: deprecated_member_use
      Element element,
      BuildStep buildStep) async {
    try {
      // Try to use reflection first as it's the most direct way
      final dynamic dynElement = element;
      if (dynElement.element2 is ClassElement2) {
        return dynElement.element2 as ClassElement2;
      }

      // If reflection doesn't work, we'll try to find the element by name and location
      final resolver = buildStep.resolver;

      // Use dynamic to access potentially private APIs
      final dynamic resolverDynamic = resolver;
      final driver = resolverDynamic.driver;

      if (driver != null) {
        // Try to get the Element2 from the driver using the Element's source and offset
        final result = await driver.getElementDeclaration(element);
        if (result?.element is ClassElement2) {
          return result?.element as ClassElement2;
        }
      }
    } catch (e) {
      // Log the error but continue
      print('Error finding Element2 for ${element.displayName}: $e');
    }

    return null;
  }

  void _writeSchemaToBuffer(StringBuffer buffer, String name, DartType type,
      Map<String, dynamic> schema) {
    if (_typeCheckers.stringChecker.isExactlyType(type)) {
      buffer.writeln('const $name = r\'${jsonEncode(schema)}\';');
    } else if (_isMapStringDynamic(type)) {
      buffer.writeln('const $name = ${_generateMapLiteral(schema)};');
    } else {
      throw InvalidGenerationSourceError(
          'Failed to generate schema for $name. Only support String or Map<String, dynamic>.');
    }
  }

  String _generateMapLiteral(Map<String, dynamic> map) {
    return '<String, dynamic>${_convertMapToString(map)}';
  }

  String _convertMapToString(Map<String, dynamic> map) {
    return '{${map.entries.map((e) => '${_escapeKey(e.key)}: ${_convertValueToString(e.value)}').join(', ')}}';
  }

  String _escapeKey(String key) {
    return 'r\'$key\'';
  }

  String _convertValueToString(dynamic value) {
    if (value is Map<String, dynamic>) {
      return _convertMapToString(value);
    } else if (value is List) {
      return _convertListToString(value);
    } else if (value is String) {
      return 'r\'$value\'';
    } else {
      return value.toString();
    }
  }

  String _convertListToString(List list) {
    return '[${list.map((e) => _convertValueToString(e)).join(', ')}]';
  }

  bool _isMapStringDynamic(DartType type) {
    if (type is ParameterizedType &&
        _typeCheckers.mapChecker.isExactlyType(type)) {
      var typeArguments = type.typeArguments;
      return typeArguments.length == 2 &&
          _typeCheckers.stringChecker.isExactlyType(typeArguments[0]) &&
          typeArguments[1] is DynamicType;
    }
    return false;
  }

  Future<String?> _getRedirectedVariableName(
      GetterElement getter, BuildStep buildStep) async {
    final parsedLibrary = await _getParsedLibrary(getter, buildStep);
    final fragment = getter.firstFragment;
    final node = _findGetterDeclaration(parsedLibrary, fragment);
    return node != null ? _extractGetterBody(node) : null;
  }

  Future<ParsedLibraryResult> _getParsedLibrary(
      Element2 element, BuildStep buildStep) async {
    final assetId = buildStep.inputId;
    final resolver = buildStep.resolver;
    final library = await resolver.libraryFor(assetId);

    // Find corresponding LibraryElement for LibraryElement2
    // ignore: deprecated_member_use
    final legacyLibrary =
        // ignore: deprecated_member_use
        ElementAdapter.toElement(element.library2!) as LibraryElement?;
    if (legacyLibrary == null) {
      throw InvalidGenerationSourceError(
          'Failed to convert library to LibraryElement');
    }

    // Use reflection to access getParsedLibraryByElement2 if available
    try {
      final dynamic session = library.session;
      if (session != null) {
        // Try to use the new API if it's available
        final parsedLibraryMethod = session.getParsedLibraryByElement2;
        if (parsedLibraryMethod != null) {
          final result = parsedLibraryMethod(element.library2!);
          if (result is ParsedLibraryResult) {
            return result;
          }
        }

        // Fall back to the old API with our legacy converter
        // ignore: deprecated_member_use
        final parsedLibrary = session.getParsedLibraryByElement(legacyLibrary);
        if (parsedLibrary is ParsedLibraryResult) {
          return parsedLibrary;
        }
      }
    } catch (e) {
      print('Error accessing parsed library: $e');
    }

    throw InvalidGenerationSourceError(
        'Failed to parse library for ${element.displayName}');
  }

  MethodDeclaration? _findGetterDeclaration(
      ParsedLibraryResult parsedLibrary, Fragment fragment) {
    final result = parsedLibrary.getFragmentDeclaration(fragment);
    return (result?.node is MethodDeclaration)
        ? result!.node as MethodDeclaration
        : null;
  }

  String? _extractGetterBody(MethodDeclaration getterDeclaration) {
    final body = getterDeclaration.body;
    if (body is ExpressionFunctionBody) {
      final expression = body.expression;
      if (expression is SimpleIdentifier) {
        return expression.name;
      }
    }
    return null;
  }
}

class JsonSchemaGenerator {
  final _typeCheckers = TypeCheckers();
  final _generatedSchemas = <String, Map<String, dynamic>>{};

  Map<String, dynamic> generateSchema(ClassElement2 element) {
    _generatedSchemas.clear();
    final mainSchema = _getPropertySchema(element.thisType, isRoot: true);

    return {
      r'$schema': 'https://json-schema.org/draft/2020-12/schema',
      ...mainSchema,
      r'$defs': _generatedSchemas,
    };
  }

  Map<String, dynamic> _getPropertySchema(DartType type,
      {bool isRoot = false, Set<DartType> seenTypes = const {}}) {
    if (!isRoot && seenTypes.contains(type)) {
      final element = type.element3;
      if (element != null) {
        return {r'$ref': '#/\$defs/${element.displayName}'};
      }
    }

    var newSeenTypes = Set<DartType>.from(seenTypes)..add(type);

    if (_typeCheckers.stringChecker.isExactlyType(type)) {
      return {'type': 'string'};
    }
    if (_typeCheckers.intChecker.isExactlyType(type)) {
      return {'type': 'integer'};
    }
    if (_typeCheckers.doubleChecker.isExactlyType(type)) {
      return {'type': 'number'};
    }
    if (_typeCheckers.boolChecker.isExactlyType(type)) {
      return {'type': 'boolean'};
    }
    if (_typeCheckers.dateTimeChecker.isExactlyType(type)) {
      return {'type': 'string', 'format': 'date-time'};
    }
    if (_typeCheckers.uriChecker.isExactlyType(type)) {
      return {'type': 'string', 'format': 'uri'};
    }

    if (_typeCheckers.iterableChecker.isAssignableFromType(type)) {
      final itemType = _getGenericType(type);
      return {
        'type': 'array',
        'items': _getPropertySchema(itemType, seenTypes: newSeenTypes),
      };
    }

    if (_typeCheckers.mapChecker.isAssignableFromType(type)) {
      final valueType = _getGenericType(type, 1);
      return {
        'type': 'object',
        'additionalProperties':
            _getPropertySchema(valueType, seenTypes: newSeenTypes),
      };
    }

    if (type is InterfaceType &&
        !_typeCheckers.objectChecker.isExactlyType(type)) {
      return _generateComplexTypeSchema(type, isRoot, newSeenTypes);
    }

    return {'type': 'object'};
  }

  Map<String, dynamic> _generateComplexTypeSchema(
      InterfaceType type, bool isRoot, Set<DartType> seenTypes) {
    final element = type.element3;
    final typeName = element.displayName;

    if (!isRoot && _generatedSchemas.containsKey(typeName)) {
      return {r'$ref': '#/\$defs/$typeName'};
    }

    final classElement = element;
    final dataClassType = _identifyDataClassType(classElement);
    final properties = _getProperties(classElement, dataClassType);

    final schemaProperties = <String, dynamic>{};
    final required = <String>[];

    for (final property in properties) {
      final propertySchema =
          _getPropertySchema(property.type, seenTypes: seenTypes);

      if (property.description != null) {
        propertySchema['description'] = property.description;
      }

      if (property.defaultValue != null) {
        if (_typeCheckers.stringChecker.isAssignableFromType(property.type)) {
          propertySchema['default'] = property.defaultValue!.toStringValue();
        } else if (_typeCheckers.intChecker
            .isAssignableFromType(property.type)) {
          propertySchema['default'] = property.defaultValue!.toIntValue();
        } else if (_typeCheckers.doubleChecker
            .isAssignableFromType(property.type)) {
          propertySchema['default'] = property.defaultValue!.toDoubleValue();
        } else if (_typeCheckers.boolChecker
            .isAssignableFromType(property.type)) {
          propertySchema['default'] = property.defaultValue!.toBoolValue();
        } else if (_typeCheckers.iterableChecker
            .isAssignableFromType(property.type)) {
          propertySchema['default'] = property.defaultValue!.toListValue();
        } else if (_typeCheckers.mapChecker
            .isAssignableFromType(property.type)) {
          propertySchema['default'] = property.defaultValue!.toMapValue();
        } else {
          throw UnsupportedError(
              'Unsupported default value type for property ${property.name}');
        }
      }

      schemaProperties[property.name] = propertySchema;

      if (property.isRequired) {
        required.add(property.name);
      }
    }

    final schema = {
      'type': 'object',
      'properties': schemaProperties,
      if (required.isNotEmpty) 'required': required,
    };

    if (!isRoot) {
      _generatedSchemas[typeName] = schema;
      return {r'$ref': '#/\$defs/$typeName'};
    }

    return schema;
  }

  DataClassType _identifyDataClassType(InterfaceElement2 element) {
    if (ElementAdapter.hasAnnotationOf(
        element, _typeCheckers.jsonSerializableChecker)) {
      return DataClassType.jsonSerializable;
    } else if (ElementAdapter.hasAnnotationOf(
        element, _typeCheckers.freezedChecker)) {
      return DataClassType.freezed;
    } else {
      return DataClassType.unsupported;
    }
  }

  DartType _getGenericType(DartType type, [int index = 0]) {
    return (type is InterfaceType && type.typeArguments.isNotEmpty)
        ? type.typeArguments[index]
        : type;
  }

  List<PropertyInfo> _getProperties(
      InterfaceElement2 element, DataClassType dataClassType) {
    switch (dataClassType) {
      case DataClassType.jsonSerializable:
        return _getJsonSerializableProperties(element);
      case DataClassType.freezed:
        return _getFreezedProperties(element);
      case DataClassType.unsupported:
        throw UnsupportedError(
            'Unsupported data class type. Use @JsonSerializable or @freezed annotation.');
    }
  }

  List<PropertyInfo> _getJsonSerializableProperties(InterfaceElement2 element) {
    final properties = <PropertyInfo>[];

    // Use Element2 API to get fields
    for (var field in element.children2.whereType<FieldElement2>()) {
      if (field.isStatic || !field.isPublic) continue;

      // Use adapter to check annotations
      final jsonKey =
          ElementAdapter.firstAnnotationOf(field, _typeCheckers.jsonKeyChecker);
      final reader = jsonKey != null ? ConstantReader(jsonKey) : null;

      final includeFromJson = reader?.read('includeFromJson').boolValue ?? true;
      final includeToJson = reader?.read('includeToJson').boolValue ?? true;

      if (!includeFromJson || !includeToJson) continue;

      final isRequired = field.isFinal &&
          field.type.nullabilitySuffix == NullabilitySuffix.none;
      final defaultValue = reader?.read('defaultValue').objectValue;
      final description = ElementAdapter.getDocumentation(field);

      properties.add(PropertyInfo(
        field.name3 ?? '', // Use name3 from Element2 API
        field.type,
        isRequired: isRequired,
        defaultValue: defaultValue,
        description: description,
      ));
    }

    return properties;
  }

  List<PropertyInfo> _getFreezedProperties(InterfaceElement2 element) {
    final properties = <PropertyInfo>[];
    final constructor = element.unnamedConstructor2;

    if (constructor == null) {
      throw StateError(
          'No unnamed constructor found for freezed class ${element.displayName}');
    }

    // Use Element2 API to get parameters
    for (var parameter
        in constructor.children2.whereType<FormalParameterElement>()) {
      final defaultValueAnnotation = ElementAdapter.firstAnnotationOf(
          parameter, _typeCheckers.defaultChecker);
      final defaultValue = defaultValueAnnotation != null
          ? ConstantReader(defaultValueAnnotation)
              .read('defaultValue')
              .objectValue
          : null;

      final description = ElementAdapter.getDocumentation(parameter);

      properties.add(PropertyInfo(
        parameter.name3 ?? '', // Use name3 from Element2 API
        parameter.type,
        isRequired: parameter.isRequired,
        defaultValue: defaultValue,
        description: description,
      ));
    }

    return properties;
  }
}

class TypeCheckers {
  final jsonKeyChecker = const TypeChecker.fromRuntime(JsonKey);
  final stringChecker = const TypeChecker.fromRuntime(String);
  final intChecker = const TypeChecker.fromRuntime(int);
  final doubleChecker = const TypeChecker.fromRuntime(double);
  final boolChecker = const TypeChecker.fromRuntime(bool);
  final iterableChecker = const TypeChecker.fromRuntime(Iterable);
  final mapChecker = const TypeChecker.fromRuntime(Map);
  final dateTimeChecker = const TypeChecker.fromRuntime(DateTime);
  final uriChecker = const TypeChecker.fromRuntime(Uri);
  final objectChecker = const TypeChecker.fromRuntime(Object);
  final jsonSchemaChecker = const TypeChecker.fromRuntime(JsonSchema);
  final descriptionChecker = const TypeChecker.fromRuntime(Description);
  final defaultValueChecker = const TypeChecker.fromRuntime(DefaultValue);
  final jsonSerializableChecker =
      const TypeChecker.fromRuntime(JsonSerializable);
  final freezedChecker = const TypeChecker.fromRuntime(Freezed);
  final defaultChecker = const TypeChecker.fromRuntime(Default);

  const TypeCheckers();
}

Builder sotiSchemaBuilder(BuilderOptions options) => SharedPartBuilder(
      [SotiSchemaGenerator()],
      'soti_schema',
    );
