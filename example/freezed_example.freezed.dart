// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_example.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FreezedPerson {

 String get name; int get age; List<String> get hobbies;
/// Create a copy of FreezedPerson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FreezedPersonCopyWith<FreezedPerson> get copyWith => _$FreezedPersonCopyWithImpl<FreezedPerson>(this as FreezedPerson, _$identity);

  /// Serializes this FreezedPerson to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FreezedPerson&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&const DeepCollectionEquality().equals(other.hobbies, hobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,age,const DeepCollectionEquality().hash(hobbies));

@override
String toString() {
  return 'FreezedPerson(name: $name, age: $age, hobbies: $hobbies)';
}


}

/// @nodoc
abstract mixin class $FreezedPersonCopyWith<$Res>  {
  factory $FreezedPersonCopyWith(FreezedPerson value, $Res Function(FreezedPerson) _then) = _$FreezedPersonCopyWithImpl;
@useResult
$Res call({
 String name, int age, List<String> hobbies
});




}
/// @nodoc
class _$FreezedPersonCopyWithImpl<$Res>
    implements $FreezedPersonCopyWith<$Res> {
  _$FreezedPersonCopyWithImpl(this._self, this._then);

  final FreezedPerson _self;
  final $Res Function(FreezedPerson) _then;

/// Create a copy of FreezedPerson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? age = null,Object? hobbies = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,hobbies: null == hobbies ? _self.hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [FreezedPerson].
extension FreezedPersonPatterns on FreezedPerson {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FreezedPerson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FreezedPerson() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FreezedPerson value)  $default,){
final _that = this;
switch (_that) {
case _FreezedPerson():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FreezedPerson value)?  $default,){
final _that = this;
switch (_that) {
case _FreezedPerson() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int age,  List<String> hobbies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FreezedPerson() when $default != null:
return $default(_that.name,_that.age,_that.hobbies);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int age,  List<String> hobbies)  $default,) {final _that = this;
switch (_that) {
case _FreezedPerson():
return $default(_that.name,_that.age,_that.hobbies);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int age,  List<String> hobbies)?  $default,) {final _that = this;
switch (_that) {
case _FreezedPerson() when $default != null:
return $default(_that.name,_that.age,_that.hobbies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FreezedPerson extends FreezedPerson {
  const _FreezedPerson({this.name = '', this.age = 0, final  List<String> hobbies = const []}): _hobbies = hobbies,super._();
  factory _FreezedPerson.fromJson(Map<String, dynamic> json) => _$FreezedPersonFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  int age;
 final  List<String> _hobbies;
@override@JsonKey() List<String> get hobbies {
  if (_hobbies is EqualUnmodifiableListView) return _hobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hobbies);
}


/// Create a copy of FreezedPerson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FreezedPersonCopyWith<_FreezedPerson> get copyWith => __$FreezedPersonCopyWithImpl<_FreezedPerson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FreezedPersonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FreezedPerson&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,age,const DeepCollectionEquality().hash(_hobbies));

@override
String toString() {
  return 'FreezedPerson(name: $name, age: $age, hobbies: $hobbies)';
}


}

/// @nodoc
abstract mixin class _$FreezedPersonCopyWith<$Res> implements $FreezedPersonCopyWith<$Res> {
  factory _$FreezedPersonCopyWith(_FreezedPerson value, $Res Function(_FreezedPerson) _then) = __$FreezedPersonCopyWithImpl;
@override @useResult
$Res call({
 String name, int age, List<String> hobbies
});




}
/// @nodoc
class __$FreezedPersonCopyWithImpl<$Res>
    implements _$FreezedPersonCopyWith<$Res> {
  __$FreezedPersonCopyWithImpl(this._self, this._then);

  final _FreezedPerson _self;
  final $Res Function(_FreezedPerson) _then;

/// Create a copy of FreezedPerson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? age = null,Object? hobbies = null,}) {
  return _then(_FreezedPerson(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,hobbies: null == hobbies ? _self._hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$DocumentedPerson {

/// The full name of the person.
 String get name;/// The age of the person in years.
 int get age;/// A list of hobbies the person enjoys.
 List<String> get hobbies;/// The person's email address.
 String? get email;/// Whether the person is currently active.
 bool get isActive;
/// Create a copy of DocumentedPerson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentedPersonCopyWith<DocumentedPerson> get copyWith => _$DocumentedPersonCopyWithImpl<DocumentedPerson>(this as DocumentedPerson, _$identity);

  /// Serializes this DocumentedPerson to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentedPerson&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&const DeepCollectionEquality().equals(other.hobbies, hobbies)&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,age,const DeepCollectionEquality().hash(hobbies),email,isActive);

@override
String toString() {
  return 'DocumentedPerson(name: $name, age: $age, hobbies: $hobbies, email: $email, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $DocumentedPersonCopyWith<$Res>  {
  factory $DocumentedPersonCopyWith(DocumentedPerson value, $Res Function(DocumentedPerson) _then) = _$DocumentedPersonCopyWithImpl;
@useResult
$Res call({
 String name, int age, List<String> hobbies, String? email, bool isActive
});




}
/// @nodoc
class _$DocumentedPersonCopyWithImpl<$Res>
    implements $DocumentedPersonCopyWith<$Res> {
  _$DocumentedPersonCopyWithImpl(this._self, this._then);

  final DocumentedPerson _self;
  final $Res Function(DocumentedPerson) _then;

/// Create a copy of DocumentedPerson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? age = null,Object? hobbies = null,Object? email = freezed,Object? isActive = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,hobbies: null == hobbies ? _self.hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentedPerson].
extension DocumentedPersonPatterns on DocumentedPerson {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentedPerson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentedPerson() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentedPerson value)  $default,){
final _that = this;
switch (_that) {
case _DocumentedPerson():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentedPerson value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentedPerson() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int age,  List<String> hobbies,  String? email,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentedPerson() when $default != null:
return $default(_that.name,_that.age,_that.hobbies,_that.email,_that.isActive);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int age,  List<String> hobbies,  String? email,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _DocumentedPerson():
return $default(_that.name,_that.age,_that.hobbies,_that.email,_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int age,  List<String> hobbies,  String? email,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _DocumentedPerson() when $default != null:
return $default(_that.name,_that.age,_that.hobbies,_that.email,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentedPerson extends DocumentedPerson {
  const _DocumentedPerson({this.name = '', this.age = 0, final  List<String> hobbies = const [], this.email, this.isActive = true}): _hobbies = hobbies,super._();
  factory _DocumentedPerson.fromJson(Map<String, dynamic> json) => _$DocumentedPersonFromJson(json);

/// The full name of the person.
@override@JsonKey() final  String name;
/// The age of the person in years.
@override@JsonKey() final  int age;
/// A list of hobbies the person enjoys.
 final  List<String> _hobbies;
/// A list of hobbies the person enjoys.
@override@JsonKey() List<String> get hobbies {
  if (_hobbies is EqualUnmodifiableListView) return _hobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hobbies);
}

/// The person's email address.
@override final  String? email;
/// Whether the person is currently active.
@override@JsonKey() final  bool isActive;

/// Create a copy of DocumentedPerson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentedPersonCopyWith<_DocumentedPerson> get copyWith => __$DocumentedPersonCopyWithImpl<_DocumentedPerson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentedPersonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentedPerson&&(identical(other.name, name) || other.name == name)&&(identical(other.age, age) || other.age == age)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies)&&(identical(other.email, email) || other.email == email)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,age,const DeepCollectionEquality().hash(_hobbies),email,isActive);

@override
String toString() {
  return 'DocumentedPerson(name: $name, age: $age, hobbies: $hobbies, email: $email, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$DocumentedPersonCopyWith<$Res> implements $DocumentedPersonCopyWith<$Res> {
  factory _$DocumentedPersonCopyWith(_DocumentedPerson value, $Res Function(_DocumentedPerson) _then) = __$DocumentedPersonCopyWithImpl;
@override @useResult
$Res call({
 String name, int age, List<String> hobbies, String? email, bool isActive
});




}
/// @nodoc
class __$DocumentedPersonCopyWithImpl<$Res>
    implements _$DocumentedPersonCopyWith<$Res> {
  __$DocumentedPersonCopyWithImpl(this._self, this._then);

  final _DocumentedPerson _self;
  final $Res Function(_DocumentedPerson) _then;

/// Create a copy of DocumentedPerson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? age = null,Object? hobbies = null,Object? email = freezed,Object? isActive = null,}) {
  return _then(_DocumentedPerson(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int,hobbies: null == hobbies ? _self._hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Product {

/// Unique product identifier
 String get productId;/// Product name
 String get name;/// Product description
 String? get description;/// Price in USD
 double get price;/// Number of items in stock
 int get stockQuantity;/// Product categories
 List<String> get categories;/// Product tags for search
 List<String> get tags;/// Is the product available for sale
 bool get isAvailable;/// Product dimensions in centimeters
 Map<String, double>? get dimensions;/// Product weight in kilograms
 double? get weight;/// Product manufacturer
 String? get manufacturer;/// Product release date
 DateTime? get releaseDate;/// Product warranty period in months
 int? get warrantyMonths;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.stockQuantity, stockQuantity) || other.stockQuantity == stockQuantity)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&const DeepCollectionEquality().equals(other.dimensions, dimensions)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.manufacturer, manufacturer) || other.manufacturer == manufacturer)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.warrantyMonths, warrantyMonths) || other.warrantyMonths == warrantyMonths));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,name,description,price,stockQuantity,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(tags),isAvailable,const DeepCollectionEquality().hash(dimensions),weight,manufacturer,releaseDate,warrantyMonths);

@override
String toString() {
  return 'Product(productId: $productId, name: $name, description: $description, price: $price, stockQuantity: $stockQuantity, categories: $categories, tags: $tags, isAvailable: $isAvailable, dimensions: $dimensions, weight: $weight, manufacturer: $manufacturer, releaseDate: $releaseDate, warrantyMonths: $warrantyMonths)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 String productId, String name, String? description, double price, int stockQuantity, List<String> categories, List<String> tags, bool isAvailable, Map<String, double>? dimensions, double? weight, String? manufacturer, DateTime? releaseDate, int? warrantyMonths
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? name = null,Object? description = freezed,Object? price = null,Object? stockQuantity = null,Object? categories = null,Object? tags = null,Object? isAvailable = null,Object? dimensions = freezed,Object? weight = freezed,Object? manufacturer = freezed,Object? releaseDate = freezed,Object? warrantyMonths = freezed,}) {
  return _then(_self.copyWith(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,stockQuantity: null == stockQuantity ? _self.stockQuantity : stockQuantity // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,dimensions: freezed == dimensions ? _self.dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,manufacturer: freezed == manufacturer ? _self.manufacturer : manufacturer // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,warrantyMonths: freezed == warrantyMonths ? _self.warrantyMonths : warrantyMonths // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  String name,  String? description,  double price,  int stockQuantity,  List<String> categories,  List<String> tags,  bool isAvailable,  Map<String, double>? dimensions,  double? weight,  String? manufacturer,  DateTime? releaseDate,  int? warrantyMonths)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.productId,_that.name,_that.description,_that.price,_that.stockQuantity,_that.categories,_that.tags,_that.isAvailable,_that.dimensions,_that.weight,_that.manufacturer,_that.releaseDate,_that.warrantyMonths);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  String name,  String? description,  double price,  int stockQuantity,  List<String> categories,  List<String> tags,  bool isAvailable,  Map<String, double>? dimensions,  double? weight,  String? manufacturer,  DateTime? releaseDate,  int? warrantyMonths)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.productId,_that.name,_that.description,_that.price,_that.stockQuantity,_that.categories,_that.tags,_that.isAvailable,_that.dimensions,_that.weight,_that.manufacturer,_that.releaseDate,_that.warrantyMonths);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  String name,  String? description,  double price,  int stockQuantity,  List<String> categories,  List<String> tags,  bool isAvailable,  Map<String, double>? dimensions,  double? weight,  String? manufacturer,  DateTime? releaseDate,  int? warrantyMonths)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.productId,_that.name,_that.description,_that.price,_that.stockQuantity,_that.categories,_that.tags,_that.isAvailable,_that.dimensions,_that.weight,_that.manufacturer,_that.releaseDate,_that.warrantyMonths);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product extends Product {
  const _Product({required this.productId, required this.name, this.description, required this.price, this.stockQuantity = 0, final  List<String> categories = const [], final  List<String> tags = const [], this.isAvailable = true, final  Map<String, double>? dimensions, this.weight, this.manufacturer, this.releaseDate, this.warrantyMonths}): _categories = categories,_tags = tags,_dimensions = dimensions,super._();
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

/// Unique product identifier
@override final  String productId;
/// Product name
@override final  String name;
/// Product description
@override final  String? description;
/// Price in USD
@override final  double price;
/// Number of items in stock
@override@JsonKey() final  int stockQuantity;
/// Product categories
 final  List<String> _categories;
/// Product categories
@override@JsonKey() List<String> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

/// Product tags for search
 final  List<String> _tags;
/// Product tags for search
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

/// Is the product available for sale
@override@JsonKey() final  bool isAvailable;
/// Product dimensions in centimeters
 final  Map<String, double>? _dimensions;
/// Product dimensions in centimeters
@override Map<String, double>? get dimensions {
  final value = _dimensions;
  if (value == null) return null;
  if (_dimensions is EqualUnmodifiableMapView) return _dimensions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// Product weight in kilograms
@override final  double? weight;
/// Product manufacturer
@override final  String? manufacturer;
/// Product release date
@override final  DateTime? releaseDate;
/// Product warranty period in months
@override final  int? warrantyMonths;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.stockQuantity, stockQuantity) || other.stockQuantity == stockQuantity)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&const DeepCollectionEquality().equals(other._dimensions, _dimensions)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.manufacturer, manufacturer) || other.manufacturer == manufacturer)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.warrantyMonths, warrantyMonths) || other.warrantyMonths == warrantyMonths));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,productId,name,description,price,stockQuantity,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_tags),isAvailable,const DeepCollectionEquality().hash(_dimensions),weight,manufacturer,releaseDate,warrantyMonths);

@override
String toString() {
  return 'Product(productId: $productId, name: $name, description: $description, price: $price, stockQuantity: $stockQuantity, categories: $categories, tags: $tags, isAvailable: $isAvailable, dimensions: $dimensions, weight: $weight, manufacturer: $manufacturer, releaseDate: $releaseDate, warrantyMonths: $warrantyMonths)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 String productId, String name, String? description, double price, int stockQuantity, List<String> categories, List<String> tags, bool isAvailable, Map<String, double>? dimensions, double? weight, String? manufacturer, DateTime? releaseDate, int? warrantyMonths
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? name = null,Object? description = freezed,Object? price = null,Object? stockQuantity = null,Object? categories = null,Object? tags = null,Object? isAvailable = null,Object? dimensions = freezed,Object? weight = freezed,Object? manufacturer = freezed,Object? releaseDate = freezed,Object? warrantyMonths = freezed,}) {
  return _then(_Product(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,stockQuantity: null == stockQuantity ? _self.stockQuantity : stockQuantity // ignore: cast_nullable_to_non_nullable
as int,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,dimensions: freezed == dimensions ? _self._dimensions : dimensions // ignore: cast_nullable_to_non_nullable
as Map<String, double>?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double?,manufacturer: freezed == manufacturer ? _self.manufacturer : manufacturer // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,warrantyMonths: freezed == warrantyMonths ? _self.warrantyMonths : warrantyMonths // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
