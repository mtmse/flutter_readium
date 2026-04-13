// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'holds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Holds {

/// "minimum": 0
 int? get position;/// "minimum": 0
 int? get total;
/// Create a copy of Holds
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HoldsCopyWith<Holds> get copyWith => _$HoldsCopyWithImpl<Holds>(this as Holds, _$identity);

  /// Serializes this Holds to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Holds&&(identical(other.position, position) || other.position == position)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,position,total);

@override
String toString() {
  return 'Holds(position: $position, total: $total)';
}


}

/// @nodoc
abstract mixin class $HoldsCopyWith<$Res>  {
  factory $HoldsCopyWith(Holds value, $Res Function(Holds) _then) = _$HoldsCopyWithImpl;
@useResult
$Res call({
 int? position, int? total
});




}
/// @nodoc
class _$HoldsCopyWithImpl<$Res>
    implements $HoldsCopyWith<$Res> {
  _$HoldsCopyWithImpl(this._self, this._then);

  final Holds _self;
  final $Res Function(Holds) _then;

/// Create a copy of Holds
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? position = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Holds].
extension HoldsPatterns on Holds {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Holds value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Holds() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Holds value)  $default,){
final _that = this;
switch (_that) {
case _Holds():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Holds value)?  $default,){
final _that = this;
switch (_that) {
case _Holds() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? position,  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Holds() when $default != null:
return $default(_that.position,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? position,  int? total)  $default,) {final _that = this;
switch (_that) {
case _Holds():
return $default(_that.position,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? position,  int? total)?  $default,) {final _that = this;
switch (_that) {
case _Holds() when $default != null:
return $default(_that.position,_that.total);case _:
  return null;

}
}

}

/// @nodoc

@r2JsonSerializable
class _Holds implements Holds {
  const _Holds({this.position, this.total}): assert(position == null || position >= 0),assert(total == null || total >= 0);
  factory _Holds.fromJson(Map<String, dynamic> json) => _$HoldsFromJson(json);

/// "minimum": 0
@override final  int? position;
/// "minimum": 0
@override final  int? total;

/// Create a copy of Holds
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HoldsCopyWith<_Holds> get copyWith => __$HoldsCopyWithImpl<_Holds>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HoldsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Holds&&(identical(other.position, position) || other.position == position)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,position,total);

@override
String toString() {
  return 'Holds(position: $position, total: $total)';
}


}

/// @nodoc
abstract mixin class _$HoldsCopyWith<$Res> implements $HoldsCopyWith<$Res> {
  factory _$HoldsCopyWith(_Holds value, $Res Function(_Holds) _then) = __$HoldsCopyWithImpl;
@override @useResult
$Res call({
 int? position, int? total
});




}
/// @nodoc
class __$HoldsCopyWithImpl<$Res>
    implements _$HoldsCopyWith<$Res> {
  __$HoldsCopyWithImpl(this._self, this._then);

  final _Holds _self;
  final $Res Function(_Holds) _then;

/// Create a copy of Holds
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? position = freezed,Object? total = freezed,}) {
  return _then(_Holds(
position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
