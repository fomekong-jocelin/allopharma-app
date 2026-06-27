// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pharmacie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PharmacieModel {

 String get id; String get name; String get address; double get latitude; double get longitude; bool get hasDelivery; bool get acceptsDigitalPrescription;
/// Create a copy of PharmacieModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PharmacieModelCopyWith<PharmacieModel> get copyWith => _$PharmacieModelCopyWithImpl<PharmacieModel>(this as PharmacieModel, _$identity);

  /// Serializes this PharmacieModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PharmacieModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.hasDelivery, hasDelivery) || other.hasDelivery == hasDelivery)&&(identical(other.acceptsDigitalPrescription, acceptsDigitalPrescription) || other.acceptsDigitalPrescription == acceptsDigitalPrescription));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,latitude,longitude,hasDelivery,acceptsDigitalPrescription);

@override
String toString() {
  return 'PharmacieModel(id: $id, name: $name, address: $address, latitude: $latitude, longitude: $longitude, hasDelivery: $hasDelivery, acceptsDigitalPrescription: $acceptsDigitalPrescription)';
}


}

/// @nodoc
abstract mixin class $PharmacieModelCopyWith<$Res>  {
  factory $PharmacieModelCopyWith(PharmacieModel value, $Res Function(PharmacieModel) _then) = _$PharmacieModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String address, double latitude, double longitude, bool hasDelivery, bool acceptsDigitalPrescription
});




}
/// @nodoc
class _$PharmacieModelCopyWithImpl<$Res>
    implements $PharmacieModelCopyWith<$Res> {
  _$PharmacieModelCopyWithImpl(this._self, this._then);

  final PharmacieModel _self;
  final $Res Function(PharmacieModel) _then;

/// Create a copy of PharmacieModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? address = null,Object? latitude = null,Object? longitude = null,Object? hasDelivery = null,Object? acceptsDigitalPrescription = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,hasDelivery: null == hasDelivery ? _self.hasDelivery : hasDelivery // ignore: cast_nullable_to_non_nullable
as bool,acceptsDigitalPrescription: null == acceptsDigitalPrescription ? _self.acceptsDigitalPrescription : acceptsDigitalPrescription // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PharmacieModel].
extension PharmacieModelPatterns on PharmacieModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PharmacieModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PharmacieModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PharmacieModel value)  $default,){
final _that = this;
switch (_that) {
case _PharmacieModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PharmacieModel value)?  $default,){
final _that = this;
switch (_that) {
case _PharmacieModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String address,  double latitude,  double longitude,  bool hasDelivery,  bool acceptsDigitalPrescription)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PharmacieModel() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.latitude,_that.longitude,_that.hasDelivery,_that.acceptsDigitalPrescription);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String address,  double latitude,  double longitude,  bool hasDelivery,  bool acceptsDigitalPrescription)  $default,) {final _that = this;
switch (_that) {
case _PharmacieModel():
return $default(_that.id,_that.name,_that.address,_that.latitude,_that.longitude,_that.hasDelivery,_that.acceptsDigitalPrescription);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String address,  double latitude,  double longitude,  bool hasDelivery,  bool acceptsDigitalPrescription)?  $default,) {final _that = this;
switch (_that) {
case _PharmacieModel() when $default != null:
return $default(_that.id,_that.name,_that.address,_that.latitude,_that.longitude,_that.hasDelivery,_that.acceptsDigitalPrescription);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PharmacieModel implements PharmacieModel {
  const _PharmacieModel({required this.id, required this.name, required this.address, required this.latitude, required this.longitude, this.hasDelivery = false, this.acceptsDigitalPrescription = false});
  factory _PharmacieModel.fromJson(Map<String, dynamic> json) => _$PharmacieModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String address;
@override final  double latitude;
@override final  double longitude;
@override@JsonKey() final  bool hasDelivery;
@override@JsonKey() final  bool acceptsDigitalPrescription;

/// Create a copy of PharmacieModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PharmacieModelCopyWith<_PharmacieModel> get copyWith => __$PharmacieModelCopyWithImpl<_PharmacieModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PharmacieModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PharmacieModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.hasDelivery, hasDelivery) || other.hasDelivery == hasDelivery)&&(identical(other.acceptsDigitalPrescription, acceptsDigitalPrescription) || other.acceptsDigitalPrescription == acceptsDigitalPrescription));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,address,latitude,longitude,hasDelivery,acceptsDigitalPrescription);

@override
String toString() {
  return 'PharmacieModel(id: $id, name: $name, address: $address, latitude: $latitude, longitude: $longitude, hasDelivery: $hasDelivery, acceptsDigitalPrescription: $acceptsDigitalPrescription)';
}


}

/// @nodoc
abstract mixin class _$PharmacieModelCopyWith<$Res> implements $PharmacieModelCopyWith<$Res> {
  factory _$PharmacieModelCopyWith(_PharmacieModel value, $Res Function(_PharmacieModel) _then) = __$PharmacieModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String address, double latitude, double longitude, bool hasDelivery, bool acceptsDigitalPrescription
});




}
/// @nodoc
class __$PharmacieModelCopyWithImpl<$Res>
    implements _$PharmacieModelCopyWith<$Res> {
  __$PharmacieModelCopyWithImpl(this._self, this._then);

  final _PharmacieModel _self;
  final $Res Function(_PharmacieModel) _then;

/// Create a copy of PharmacieModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? address = null,Object? latitude = null,Object? longitude = null,Object? hasDelivery = null,Object? acceptsDigitalPrescription = null,}) {
  return _then(_PharmacieModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,hasDelivery: null == hasDelivery ? _self.hasDelivery : hasDelivery // ignore: cast_nullable_to_non_nullable
as bool,acceptsDigitalPrescription: null == acceptsDigitalPrescription ? _self.acceptsDigitalPrescription : acceptsDigitalPrescription // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
