// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signalement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignalementModel {

 String get id; String get medicationName; String get city; String get neighborhood; SignalementUrgency get urgency; SignalementStatus get status; String? get patientId; List<String> get respondingPharmacyIds; DateTime get createdAt;
/// Create a copy of SignalementModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignalementModelCopyWith<SignalementModel> get copyWith => _$SignalementModelCopyWithImpl<SignalementModel>(this as SignalementModel, _$identity);

  /// Serializes this SignalementModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignalementModel&&(identical(other.id, id) || other.id == id)&&(identical(other.medicationName, medicationName) || other.medicationName == medicationName)&&(identical(other.city, city) || other.city == city)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.urgency, urgency) || other.urgency == urgency)&&(identical(other.status, status) || other.status == status)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&const DeepCollectionEquality().equals(other.respondingPharmacyIds, respondingPharmacyIds)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,medicationName,city,neighborhood,urgency,status,patientId,const DeepCollectionEquality().hash(respondingPharmacyIds),createdAt);

@override
String toString() {
  return 'SignalementModel(id: $id, medicationName: $medicationName, city: $city, neighborhood: $neighborhood, urgency: $urgency, status: $status, patientId: $patientId, respondingPharmacyIds: $respondingPharmacyIds, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $SignalementModelCopyWith<$Res>  {
  factory $SignalementModelCopyWith(SignalementModel value, $Res Function(SignalementModel) _then) = _$SignalementModelCopyWithImpl;
@useResult
$Res call({
 String id, String medicationName, String city, String neighborhood, SignalementUrgency urgency, SignalementStatus status, String? patientId, List<String> respondingPharmacyIds, DateTime createdAt
});




}
/// @nodoc
class _$SignalementModelCopyWithImpl<$Res>
    implements $SignalementModelCopyWith<$Res> {
  _$SignalementModelCopyWithImpl(this._self, this._then);

  final SignalementModel _self;
  final $Res Function(SignalementModel) _then;

/// Create a copy of SignalementModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? medicationName = null,Object? city = null,Object? neighborhood = null,Object? urgency = null,Object? status = null,Object? patientId = freezed,Object? respondingPharmacyIds = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,medicationName: null == medicationName ? _self.medicationName : medicationName // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,urgency: null == urgency ? _self.urgency : urgency // ignore: cast_nullable_to_non_nullable
as SignalementUrgency,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SignalementStatus,patientId: freezed == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String?,respondingPharmacyIds: null == respondingPharmacyIds ? _self.respondingPharmacyIds : respondingPharmacyIds // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SignalementModel].
extension SignalementModelPatterns on SignalementModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignalementModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignalementModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignalementModel value)  $default,){
final _that = this;
switch (_that) {
case _SignalementModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignalementModel value)?  $default,){
final _that = this;
switch (_that) {
case _SignalementModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String medicationName,  String city,  String neighborhood,  SignalementUrgency urgency,  SignalementStatus status,  String? patientId,  List<String> respondingPharmacyIds,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignalementModel() when $default != null:
return $default(_that.id,_that.medicationName,_that.city,_that.neighborhood,_that.urgency,_that.status,_that.patientId,_that.respondingPharmacyIds,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String medicationName,  String city,  String neighborhood,  SignalementUrgency urgency,  SignalementStatus status,  String? patientId,  List<String> respondingPharmacyIds,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _SignalementModel():
return $default(_that.id,_that.medicationName,_that.city,_that.neighborhood,_that.urgency,_that.status,_that.patientId,_that.respondingPharmacyIds,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String medicationName,  String city,  String neighborhood,  SignalementUrgency urgency,  SignalementStatus status,  String? patientId,  List<String> respondingPharmacyIds,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _SignalementModel() when $default != null:
return $default(_that.id,_that.medicationName,_that.city,_that.neighborhood,_that.urgency,_that.status,_that.patientId,_that.respondingPharmacyIds,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignalementModel implements SignalementModel {
  const _SignalementModel({required this.id, required this.medicationName, required this.city, required this.neighborhood, required this.urgency, this.status = SignalementStatus.pending, this.patientId, final  List<String> respondingPharmacyIds = const [], required this.createdAt}): _respondingPharmacyIds = respondingPharmacyIds;
  factory _SignalementModel.fromJson(Map<String, dynamic> json) => _$SignalementModelFromJson(json);

@override final  String id;
@override final  String medicationName;
@override final  String city;
@override final  String neighborhood;
@override final  SignalementUrgency urgency;
@override@JsonKey() final  SignalementStatus status;
@override final  String? patientId;
 final  List<String> _respondingPharmacyIds;
@override@JsonKey() List<String> get respondingPharmacyIds {
  if (_respondingPharmacyIds is EqualUnmodifiableListView) return _respondingPharmacyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_respondingPharmacyIds);
}

@override final  DateTime createdAt;

/// Create a copy of SignalementModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignalementModelCopyWith<_SignalementModel> get copyWith => __$SignalementModelCopyWithImpl<_SignalementModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignalementModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignalementModel&&(identical(other.id, id) || other.id == id)&&(identical(other.medicationName, medicationName) || other.medicationName == medicationName)&&(identical(other.city, city) || other.city == city)&&(identical(other.neighborhood, neighborhood) || other.neighborhood == neighborhood)&&(identical(other.urgency, urgency) || other.urgency == urgency)&&(identical(other.status, status) || other.status == status)&&(identical(other.patientId, patientId) || other.patientId == patientId)&&const DeepCollectionEquality().equals(other._respondingPharmacyIds, _respondingPharmacyIds)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,medicationName,city,neighborhood,urgency,status,patientId,const DeepCollectionEquality().hash(_respondingPharmacyIds),createdAt);

@override
String toString() {
  return 'SignalementModel(id: $id, medicationName: $medicationName, city: $city, neighborhood: $neighborhood, urgency: $urgency, status: $status, patientId: $patientId, respondingPharmacyIds: $respondingPharmacyIds, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$SignalementModelCopyWith<$Res> implements $SignalementModelCopyWith<$Res> {
  factory _$SignalementModelCopyWith(_SignalementModel value, $Res Function(_SignalementModel) _then) = __$SignalementModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String medicationName, String city, String neighborhood, SignalementUrgency urgency, SignalementStatus status, String? patientId, List<String> respondingPharmacyIds, DateTime createdAt
});




}
/// @nodoc
class __$SignalementModelCopyWithImpl<$Res>
    implements _$SignalementModelCopyWith<$Res> {
  __$SignalementModelCopyWithImpl(this._self, this._then);

  final _SignalementModel _self;
  final $Res Function(_SignalementModel) _then;

/// Create a copy of SignalementModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? medicationName = null,Object? city = null,Object? neighborhood = null,Object? urgency = null,Object? status = null,Object? patientId = freezed,Object? respondingPharmacyIds = null,Object? createdAt = null,}) {
  return _then(_SignalementModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,medicationName: null == medicationName ? _self.medicationName : medicationName // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,neighborhood: null == neighborhood ? _self.neighborhood : neighborhood // ignore: cast_nullable_to_non_nullable
as String,urgency: null == urgency ? _self.urgency : urgency // ignore: cast_nullable_to_non_nullable
as SignalementUrgency,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SignalementStatus,patientId: freezed == patientId ? _self.patientId : patientId // ignore: cast_nullable_to_non_nullable
as String?,respondingPharmacyIds: null == respondingPharmacyIds ? _self._respondingPharmacyIds : respondingPharmacyIds // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
