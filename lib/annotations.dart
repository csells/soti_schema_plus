/// Annotation to mark a class as a JSON schema.
class SotiJsonSchema {
  /// Creates a new [SotiJsonSchema] annotation.
  const SotiJsonSchema();
}

/// Annotation to mark a class as a JSON schema.
const jsonSchema = SotiJsonSchema();

/// Annotation to mark a class as a Soti schema.
class SotiSchema {
  /// Creates a new [SotiSchema] annotation.
  const SotiSchema();
}

/// Annotation to mark a class as a Soti schema.
const sotiSchema = SotiSchema();

/// Annotation to add a description to a property.
class Description {
  /// Creates a new [Description] annotation.
  final String value;

  /// Creates a new [Description] annotation with the given [value].
  const Description(this.value);
}

/// Annotation to add a default value to a property.
class DefaultValue {
  /// The default value for the property.
  final dynamic value;

  /// Creates a new [DefaultValue] annotation with the given [value].
  const DefaultValue(this.value);
}
