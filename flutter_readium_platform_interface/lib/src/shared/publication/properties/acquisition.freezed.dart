// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'acquisition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Acquisition {

 String get type; List<Acquisition>? get child;
/// Create a copy of Acquisition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AcquisitionCopyWith<Acquisition> get copyWith => _$AcquisitionCopyWithImpl<Acquisition>(this as Acquisition, _$identity);

  /// Serializes this Acquisition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Acquisition&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.child, child));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(child));

@override
String toString() {
  return 'Acquisition(type: $type, child: $child)';
}


}

/// @nodoc
abstract mixin class $AcquisitionCopyWith<$Res>  {
  factory $AcquisitionCopyWith(Acquisition value, $Res Function(Acquisition) _then) = _$AcquisitionCopyWithImpl;
@useResult
$Res call({
 String type, List<Acquisition>? child
});




}
/// @nodoc
class _$AcquisitionCopyWithImpl<$Res>
    implements $AcquisitionCopyWith<$Res> {
  _$AcquisitionCopyWithImpl(this._self, this._then);

  final Acquisition _self;
  final $Res Function(Acquisition) _then;

/// Create a copy of Acquisition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? child = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as List<Acquisition>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Acquisition].
extension AcquisitionPatterns on Acquisition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Acquisition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Acquisition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Acquisition value)  $default,){
final _that = this;
switch (_that) {
case _Acquisition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Acquisition value)?  $default,){
final _that = this;
switch (_that) {
case _Acquisition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  List<Acquisition>? child)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Acquisition() when $default != null:
return $default(_that.type,_that.child);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  List<Acquisition>? child)  $default,) {final _that = this;
switch (_that) {
case _Acquisition():
return $default(_that.type,_that.child);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  List<Acquisition>? child)?  $default,) {final _that = this;
switch (_that) {
case _Acquisition() when $default != null:
return $default(_that.type,_that.child);case _:
  return null;

}
}

}

/// @nodoc

@r2JsonSerializable
class _Acquisition implements Acquisition {
  const _Acquisition({required this.type, this.child});
  factory _Acquisition.fromJson(Map<String, dynamic> json) => _$AcquisitionFromJson(json);

@override final  String type;
@override final  List<Acquisition>? child;

/// Create a copy of Acquisition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AcquisitionCopyWith<_Acquisition> get copyWith => __$AcquisitionCopyWithImpl<_Acquisition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AcquisitionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Acquisition&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.child, child));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(child));

@override
String toString() {
  return 'Acquisition(type: $type, child: $child)';
}


}

/// @nodoc
abstract mixin class _$AcquisitionCopyWith<$Res> implements $AcquisitionCopyWith<$Res> {
  factory _$AcquisitionCopyWith(_Acquisition value, $Res Function(_Acquisition) _then) = __$AcquisitionCopyWithImpl;
@override @useResult
$Res call({
 String type, List<Acquisition>? child
});




}
/// @nodoc
class __$AcquisitionCopyWithImpl<$Res>
    implements _$AcquisitionCopyWith<$Res> {
  __$AcquisitionCopyWithImpl(this._self, this._then);

  final _Acquisition _self;
  final $Res Function(_Acquisition) _then;

/// Create a copy of Acquisition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? child = freezed,}) {
  return _then(_Acquisition(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as List<Acquisition>?,
  ));
}


}

// dart format on
