// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FreezedPerson {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  List<String> get hobbies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreezedPersonCopyWith<FreezedPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreezedPersonCopyWith<$Res> {
  factory $FreezedPersonCopyWith(
          FreezedPerson value, $Res Function(FreezedPerson) then) =
      _$FreezedPersonCopyWithImpl<$Res, FreezedPerson>;
  @useResult
  $Res call({String name, int age, List<String> hobbies});
}

/// @nodoc
class _$FreezedPersonCopyWithImpl<$Res, $Val extends FreezedPerson>
    implements $FreezedPersonCopyWith<$Res> {
  _$FreezedPersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? hobbies = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      hobbies: null == hobbies
          ? _value.hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FreezedPersonCopyWith<$Res>
    implements $FreezedPersonCopyWith<$Res> {
  factory _$$_FreezedPersonCopyWith(
          _$_FreezedPerson value, $Res Function(_$_FreezedPerson) then) =
      __$$_FreezedPersonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age, List<String> hobbies});
}

/// @nodoc
class __$$_FreezedPersonCopyWithImpl<$Res>
    extends _$FreezedPersonCopyWithImpl<$Res, _$_FreezedPerson>
    implements _$$_FreezedPersonCopyWith<$Res> {
  __$$_FreezedPersonCopyWithImpl(
      _$_FreezedPerson _value, $Res Function(_$_FreezedPerson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? hobbies = null,
  }) {
    return _then(_$_FreezedPerson(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      hobbies: null == hobbies
          ? _value._hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FreezedPerson extends _FreezedPerson {
  const _$_FreezedPerson(
      {this.name = '', this.age = 0, final List<String> hobbies = const []})
      : _hobbies = hobbies,
        super._();

  factory _$_FreezedPerson.fromJson(Map<String, dynamic> json) =>
      _$$_FreezedPersonFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int age;
  final List<String> _hobbies;
  @override
  @JsonKey()
  List<String> get hobbies {
    if (_hobbies is EqualUnmodifiableListView) return _hobbies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hobbies);
  }

  @override
  String toString() {
    return 'FreezedPerson(name: $name, age: $age, hobbies: $hobbies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FreezedPerson &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality().equals(other._hobbies, _hobbies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, age, const DeepCollectionEquality().hash(_hobbies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FreezedPersonCopyWith<_$_FreezedPerson> get copyWith =>
      __$$_FreezedPersonCopyWithImpl<_$_FreezedPerson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreezedPersonToJson(
      this,
    );
  }
}

abstract class _FreezedPerson extends FreezedPerson {
  const factory _FreezedPerson(
      {final String name,
      final int age,
      final List<String> hobbies}) = _$_FreezedPerson;
  const _FreezedPerson._() : super._();

  factory _FreezedPerson.fromJson(Map<String, dynamic> json) =
      _$_FreezedPerson.fromJson;

  @override
  String get name;
  @override
  int get age;
  @override
  List<String> get hobbies;
  @override
  @JsonKey(ignore: true)
  _$$_FreezedPersonCopyWith<_$_FreezedPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DocumentedPerson {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  List<String> get hobbies => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentedPersonCopyWith<DocumentedPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentedPersonCopyWith<$Res> {
  factory $DocumentedPersonCopyWith(
          DocumentedPerson value, $Res Function(DocumentedPerson) then) =
      _$DocumentedPersonCopyWithImpl<$Res, DocumentedPerson>;
  @useResult
  $Res call(
      {String name,
      int age,
      List<String> hobbies,
      String? email,
      bool isActive});
}

/// @nodoc
class _$DocumentedPersonCopyWithImpl<$Res, $Val extends DocumentedPerson>
    implements $DocumentedPersonCopyWith<$Res> {
  _$DocumentedPersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? hobbies = null,
    Object? email = freezed,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      hobbies: null == hobbies
          ? _value.hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentedPersonCopyWith<$Res>
    implements $DocumentedPersonCopyWith<$Res> {
  factory _$$_DocumentedPersonCopyWith(_$_DocumentedPerson value,
          $Res Function(_$_DocumentedPerson) then) =
      __$$_DocumentedPersonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int age,
      List<String> hobbies,
      String? email,
      bool isActive});
}

/// @nodoc
class __$$_DocumentedPersonCopyWithImpl<$Res>
    extends _$DocumentedPersonCopyWithImpl<$Res, _$_DocumentedPerson>
    implements _$$_DocumentedPersonCopyWith<$Res> {
  __$$_DocumentedPersonCopyWithImpl(
      _$_DocumentedPerson _value, $Res Function(_$_DocumentedPerson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
    Object? hobbies = null,
    Object? email = freezed,
    Object? isActive = null,
  }) {
    return _then(_$_DocumentedPerson(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      hobbies: null == hobbies
          ? _value._hobbies
          : hobbies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentedPerson extends _DocumentedPerson {
  const _$_DocumentedPerson(
      {this.name = '',
      this.age = 0,
      final List<String> hobbies = const [],
      this.email,
      this.isActive = true})
      : _hobbies = hobbies,
        super._();

  factory _$_DocumentedPerson.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentedPersonFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int age;
  final List<String> _hobbies;
  @override
  @JsonKey()
  List<String> get hobbies {
    if (_hobbies is EqualUnmodifiableListView) return _hobbies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hobbies);
  }

  @override
  final String? email;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'DocumentedPerson(name: $name, age: $age, hobbies: $hobbies, email: $email, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentedPerson &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            const DeepCollectionEquality().equals(other._hobbies, _hobbies) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, age,
      const DeepCollectionEquality().hash(_hobbies), email, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentedPersonCopyWith<_$_DocumentedPerson> get copyWith =>
      __$$_DocumentedPersonCopyWithImpl<_$_DocumentedPerson>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentedPersonToJson(
      this,
    );
  }
}

abstract class _DocumentedPerson extends DocumentedPerson {
  const factory _DocumentedPerson(
      {final String name,
      final int age,
      final List<String> hobbies,
      final String? email,
      final bool isActive}) = _$_DocumentedPerson;
  const _DocumentedPerson._() : super._();

  factory _DocumentedPerson.fromJson(Map<String, dynamic> json) =
      _$_DocumentedPerson.fromJson;

  @override
  String get name;
  @override
  int get age;
  @override
  List<String> get hobbies;
  @override
  String? get email;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentedPersonCopyWith<_$_DocumentedPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Product {
  String get productId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get stockQuantity => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  Map<String, double>? get dimensions => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get manufacturer => throw _privateConstructorUsedError;
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  int? get warrantyMonths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String productId,
      String name,
      String? description,
      double price,
      int stockQuantity,
      List<String> categories,
      List<String> tags,
      bool isAvailable,
      Map<String, double>? dimensions,
      double? weight,
      String? manufacturer,
      DateTime? releaseDate,
      int? warrantyMonths});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? stockQuantity = null,
    Object? categories = null,
    Object? tags = null,
    Object? isAvailable = null,
    Object? dimensions = freezed,
    Object? weight = freezed,
    Object? manufacturer = freezed,
    Object? releaseDate = freezed,
    Object? warrantyMonths = freezed,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      warrantyMonths: freezed == warrantyMonths
          ? _value.warrantyMonths
          : warrantyMonths // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId,
      String name,
      String? description,
      double price,
      int stockQuantity,
      List<String> categories,
      List<String> tags,
      bool isAvailable,
      Map<String, double>? dimensions,
      double? weight,
      String? manufacturer,
      DateTime? releaseDate,
      int? warrantyMonths});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(
      _$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? stockQuantity = null,
    Object? categories = null,
    Object? tags = null,
    Object? isAvailable = null,
    Object? dimensions = freezed,
    Object? weight = freezed,
    Object? manufacturer = freezed,
    Object? releaseDate = freezed,
    Object? warrantyMonths = freezed,
  }) {
    return _then(_$_Product(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      dimensions: freezed == dimensions
          ? _value._dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as Map<String, double>?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      warrantyMonths: freezed == warrantyMonths
          ? _value.warrantyMonths
          : warrantyMonths // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product extends _Product {
  const _$_Product(
      {required this.productId,
      required this.name,
      this.description,
      required this.price,
      this.stockQuantity = 0,
      final List<String> categories = const [],
      final List<String> tags = const [],
      this.isAvailable = true,
      final Map<String, double>? dimensions,
      this.weight,
      this.manufacturer,
      this.releaseDate,
      this.warrantyMonths})
      : _categories = categories,
        _tags = tags,
        _dimensions = dimensions,
        super._();

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final String productId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final double price;
  @override
  @JsonKey()
  final int stockQuantity;
  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final bool isAvailable;
  final Map<String, double>? _dimensions;
  @override
  Map<String, double>? get dimensions {
    final value = _dimensions;
    if (value == null) return null;
    if (_dimensions is EqualUnmodifiableMapView) return _dimensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? weight;
  @override
  final String? manufacturer;
  @override
  final DateTime? releaseDate;
  @override
  final int? warrantyMonths;

  @override
  String toString() {
    return 'Product(productId: $productId, name: $name, description: $description, price: $price, stockQuantity: $stockQuantity, categories: $categories, tags: $tags, isAvailable: $isAvailable, dimensions: $dimensions, weight: $weight, manufacturer: $manufacturer, releaseDate: $releaseDate, warrantyMonths: $warrantyMonths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            const DeepCollectionEquality()
                .equals(other._dimensions, _dimensions) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.warrantyMonths, warrantyMonths) ||
                other.warrantyMonths == warrantyMonths));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      name,
      description,
      price,
      stockQuantity,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_tags),
      isAvailable,
      const DeepCollectionEquality().hash(_dimensions),
      weight,
      manufacturer,
      releaseDate,
      warrantyMonths);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product extends Product {
  const factory _Product(
      {required final String productId,
      required final String name,
      final String? description,
      required final double price,
      final int stockQuantity,
      final List<String> categories,
      final List<String> tags,
      final bool isAvailable,
      final Map<String, double>? dimensions,
      final double? weight,
      final String? manufacturer,
      final DateTime? releaseDate,
      final int? warrantyMonths}) = _$_Product;
  const _Product._() : super._();

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  String get productId;
  @override
  String get name;
  @override
  String? get description;
  @override
  double get price;
  @override
  int get stockQuantity;
  @override
  List<String> get categories;
  @override
  List<String> get tags;
  @override
  bool get isAvailable;
  @override
  Map<String, double>? get dimensions;
  @override
  double? get weight;
  @override
  String? get manufacturer;
  @override
  DateTime? get releaseDate;
  @override
  int? get warrantyMonths;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
