// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boundary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Boundary {

/// A CSS Selector to a DOM element
 String get cssSelector;/// See full description below
 int get textNodeIndex;/// See full description below
 int? get charOffset;
/// Create a copy of Boundary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BoundaryCopyWith<Boundary> get copyWith => _$BoundaryCopyWithImpl<Boundary>(this as Boundary, _$identity);

  /// Serializes this Boundary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Boundary&&(identical(other.cssSelector, cssSelector) || other.cssSelector == cssSelector)&&(identical(other.textNodeIndex, textNodeIndex) || other.textNodeIndex == textNodeIndex)&&(identical(other.charOffset, charOffset) || other.charOffset == charOffset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cssSelector,textNodeIndex,charOffset);

@override
String toString() {
  return 'Boundary(cssSelector: $cssSelector, textNodeIndex: $textNodeIndex, charOffset: $charOffset)';
}


}

/// @nodoc
abstract mixin class $BoundaryCopyWith<$Res>  {
  factory $BoundaryCopyWith(Boundary value, $Res Function(Boundary) _then) = _$BoundaryCopyWithImpl;
@useResult
$Res call({
 String cssSelector, int textNodeIndex, int? charOffset
});




}
/// @nodoc
class _$BoundaryCopyWithImpl<$Res>
    implements $BoundaryCopyWith<$Res> {
  _$BoundaryCopyWithImpl(this._self, this._then);

  final Boundary _self;
  final $Res Function(Boundary) _then;

/// Create a copy of Boundary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cssSelector = null,Object? textNodeIndex = null,Object? charOffset = freezed,}) {
  return _then(_self.copyWith(
cssSelector: null == cssSelector ? _self.cssSelector : cssSelector // ignore: cast_nullable_to_non_nullable
as String,textNodeIndex: null == textNodeIndex ? _self.textNodeIndex : textNodeIndex // ignore: cast_nullable_to_non_nullable
as int,charOffset: freezed == charOffset ? _self.charOffset : charOffset // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Boundary].
extension BoundaryPatterns on Boundary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Boundary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Boundary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Boundary value)  $default,){
final _that = this;
switch (_that) {
case _Boundary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Boundary value)?  $default,){
final _that = this;
switch (_that) {
case _Boundary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cssSelector,  int textNodeIndex,  int? charOffset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Boundary() when $default != null:
return $default(_that.cssSelector,_that.textNodeIndex,_that.charOffset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cssSelector,  int textNodeIndex,  int? charOffset)  $default,) {final _that = this;
switch (_that) {
case _Boundary():
return $default(_that.cssSelector,_that.textNodeIndex,_that.charOffset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cssSelector,  int textNodeIndex,  int? charOffset)?  $default,) {final _that = this;
switch (_that) {
case _Boundary() when $default != null:
return $default(_that.cssSelector,_that.textNodeIndex,_that.charOffset);case _:
  return null;

}
}

}

/// @nodoc

@r2JsonSerializable
class _Boundary implements Boundary {
  const _Boundary({required this.cssSelector, required this.textNodeIndex, this.charOffset}): assert(textNodeIndex >= 0),assert(charOffset == null || charOffset >= 0);
  factory _Boundary.fromJson(Map<String, dynamic> json) => _$BoundaryFromJson(json);

/// A CSS Selector to a DOM element
@override final  String cssSelector;
/// See full description below
@override final  int textNodeIndex;
/// See full description below
@override final  int? charOffset;

/// Create a copy of Boundary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BoundaryCopyWith<_Boundary> get copyWith => __$BoundaryCopyWithImpl<_Boundary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BoundaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Boundary&&(identical(other.cssSelector, cssSelector) || other.cssSelector == cssSelector)&&(identical(other.textNodeIndex, textNodeIndex) || other.textNodeIndex == textNodeIndex)&&(identical(other.charOffset, charOffset) || other.charOffset == charOffset));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cssSelector,textNodeIndex,charOffset);

@override
String toString() {
  return 'Boundary(cssSelector: $cssSelector, textNodeIndex: $textNodeIndex, charOffset: $charOffset)';
}


}

/// @nodoc
abstract mixin class _$BoundaryCopyWith<$Res> implements $BoundaryCopyWith<$Res> {
  factory _$BoundaryCopyWith(_Boundary value, $Res Function(_Boundary) _then) = __$BoundaryCopyWithImpl;
@override @useResult
$Res call({
 String cssSelector, int textNodeIndex, int? charOffset
});




}
/// @nodoc
class __$BoundaryCopyWithImpl<$Res>
    implements _$BoundaryCopyWith<$Res> {
  __$BoundaryCopyWithImpl(this._self, this._then);

  final _Boundary _self;
  final $Res Function(_Boundary) _then;

/// Create a copy of Boundary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cssSelector = null,Object? textNodeIndex = null,Object? charOffset = freezed,}) {
  return _then(_Boundary(
cssSelector: null == cssSelector ? _self.cssSelector : cssSelector // ignore: cast_nullable_to_non_nullable
as String,textNodeIndex: null == textNodeIndex ? _self.textNodeIndex : textNodeIndex // ignore: cast_nullable_to_non_nullable
as int,charOffset: freezed == charOffset ? _self.charOffset : charOffset // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
