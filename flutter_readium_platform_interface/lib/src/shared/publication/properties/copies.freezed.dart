// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'copies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Copies {

/// "minimum": 0
 int? get available;/// "minimum": 0
 int? get total;
/// Create a copy of Copies
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CopiesCopyWith<Copies> get copyWith => _$CopiesCopyWithImpl<Copies>(this as Copies, _$identity);

  /// Serializes this Copies to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Copies&&(identical(other.available, available) || other.available == available)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,available,total);

@override
String toString() {
  return 'Copies(available: $available, total: $total)';
}


}

/// @nodoc
abstract mixin class $CopiesCopyWith<$Res>  {
  factory $CopiesCopyWith(Copies value, $Res Function(Copies) _then) = _$CopiesCopyWithImpl;
@useResult
$Res call({
 int? available, int? total
});




}
/// @nodoc
class _$CopiesCopyWithImpl<$Res>
    implements $CopiesCopyWith<$Res> {
  _$CopiesCopyWithImpl(this._self, this._then);

  final Copies _self;
  final $Res Function(Copies) _then;

/// Create a copy of Copies
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? available = freezed,Object? total = freezed,}) {
  return _then(_self.copyWith(
available: freezed == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Copies].
extension CopiesPatterns on Copies {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Copies value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Copies() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Copies value)  $default,){
final _that = this;
switch (_that) {
case _Copies():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Copies value)?  $default,){
final _that = this;
switch (_that) {
case _Copies() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? available,  int? total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Copies() when $default != null:
return $default(_that.available,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? available,  int? total)  $default,) {final _that = this;
switch (_that) {
case _Copies():
return $default(_that.available,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? available,  int? total)?  $default,) {final _that = this;
switch (_that) {
case _Copies() when $default != null:
return $default(_that.available,_that.total);case _:
  return null;

}
}

}

/// @nodoc

@r2JsonSerializable
class _Copies implements Copies {
  const _Copies({this.available, this.total}): assert(available == null || available >= 0),assert(total == null || total >= 0);
  factory _Copies.fromJson(Map<String, dynamic> json) => _$CopiesFromJson(json);

/// "minimum": 0
@override final  int? available;
/// "minimum": 0
@override final  int? total;

/// Create a copy of Copies
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CopiesCopyWith<_Copies> get copyWith => __$CopiesCopyWithImpl<_Copies>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CopiesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Copies&&(identical(other.available, available) || other.available == available)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,available,total);

@override
String toString() {
  return 'Copies(available: $available, total: $total)';
}


}

/// @nodoc
abstract mixin class _$CopiesCopyWith<$Res> implements $CopiesCopyWith<$Res> {
  factory _$CopiesCopyWith(_Copies value, $Res Function(_Copies) _then) = __$CopiesCopyWithImpl;
@override @useResult
$Res call({
 int? available, int? total
});




}
/// @nodoc
class __$CopiesCopyWithImpl<$Res>
    implements _$CopiesCopyWith<$Res> {
  __$CopiesCopyWithImpl(this._self, this._then);

  final _Copies _self;
  final $Res Function(_Copies) _then;

/// Create a copy of Copies
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? available = freezed,Object? total = freezed,}) {
  return _then(_Copies(
available: freezed == available ? _self.available : available // ignore: cast_nullable_to_non_nullable
as int?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
