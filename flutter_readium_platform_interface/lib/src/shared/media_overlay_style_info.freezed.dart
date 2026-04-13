// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_overlay_style_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaOverlayStyleInfo {

@JsonKey(name: 'active-class') String? get activeClass;@JsonKey(name: 'playback-active-class') String? get playbackActiveClass;
/// Create a copy of MediaOverlayStyleInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaOverlayStyleInfoCopyWith<MediaOverlayStyleInfo> get copyWith => _$MediaOverlayStyleInfoCopyWithImpl<MediaOverlayStyleInfo>(this as MediaOverlayStyleInfo, _$identity);

  /// Serializes this MediaOverlayStyleInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaOverlayStyleInfo&&(identical(other.activeClass, activeClass) || other.activeClass == activeClass)&&(identical(other.playbackActiveClass, playbackActiveClass) || other.playbackActiveClass == playbackActiveClass));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeClass,playbackActiveClass);

@override
String toString() {
  return 'MediaOverlayStyleInfo(activeClass: $activeClass, playbackActiveClass: $playbackActiveClass)';
}


}

/// @nodoc
abstract mixin class $MediaOverlayStyleInfoCopyWith<$Res>  {
  factory $MediaOverlayStyleInfoCopyWith(MediaOverlayStyleInfo value, $Res Function(MediaOverlayStyleInfo) _then) = _$MediaOverlayStyleInfoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'active-class') String? activeClass,@JsonKey(name: 'playback-active-class') String? playbackActiveClass
});




}
/// @nodoc
class _$MediaOverlayStyleInfoCopyWithImpl<$Res>
    implements $MediaOverlayStyleInfoCopyWith<$Res> {
  _$MediaOverlayStyleInfoCopyWithImpl(this._self, this._then);

  final MediaOverlayStyleInfo _self;
  final $Res Function(MediaOverlayStyleInfo) _then;

/// Create a copy of MediaOverlayStyleInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeClass = freezed,Object? playbackActiveClass = freezed,}) {
  return _then(_self.copyWith(
activeClass: freezed == activeClass ? _self.activeClass : activeClass // ignore: cast_nullable_to_non_nullable
as String?,playbackActiveClass: freezed == playbackActiveClass ? _self.playbackActiveClass : playbackActiveClass // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaOverlayStyleInfo].
extension MediaOverlayStyleInfoPatterns on MediaOverlayStyleInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaOverlayStyleInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaOverlayStyleInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaOverlayStyleInfo value)  $default,){
final _that = this;
switch (_that) {
case _MediaOverlayStyleInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaOverlayStyleInfo value)?  $default,){
final _that = this;
switch (_that) {
case _MediaOverlayStyleInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'active-class')  String? activeClass, @JsonKey(name: 'playback-active-class')  String? playbackActiveClass)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaOverlayStyleInfo() when $default != null:
return $default(_that.activeClass,_that.playbackActiveClass);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'active-class')  String? activeClass, @JsonKey(name: 'playback-active-class')  String? playbackActiveClass)  $default,) {final _that = this;
switch (_that) {
case _MediaOverlayStyleInfo():
return $default(_that.activeClass,_that.playbackActiveClass);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'active-class')  String? activeClass, @JsonKey(name: 'playback-active-class')  String? playbackActiveClass)?  $default,) {final _that = this;
switch (_that) {
case _MediaOverlayStyleInfo() when $default != null:
return $default(_that.activeClass,_that.playbackActiveClass);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaOverlayStyleInfo implements MediaOverlayStyleInfo {
  const _MediaOverlayStyleInfo({@JsonKey(name: 'active-class') this.activeClass, @JsonKey(name: 'playback-active-class') this.playbackActiveClass});
  factory _MediaOverlayStyleInfo.fromJson(Map<String, dynamic> json) => _$MediaOverlayStyleInfoFromJson(json);

@override@JsonKey(name: 'active-class') final  String? activeClass;
@override@JsonKey(name: 'playback-active-class') final  String? playbackActiveClass;

/// Create a copy of MediaOverlayStyleInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaOverlayStyleInfoCopyWith<_MediaOverlayStyleInfo> get copyWith => __$MediaOverlayStyleInfoCopyWithImpl<_MediaOverlayStyleInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaOverlayStyleInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaOverlayStyleInfo&&(identical(other.activeClass, activeClass) || other.activeClass == activeClass)&&(identical(other.playbackActiveClass, playbackActiveClass) || other.playbackActiveClass == playbackActiveClass));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,activeClass,playbackActiveClass);

@override
String toString() {
  return 'MediaOverlayStyleInfo(activeClass: $activeClass, playbackActiveClass: $playbackActiveClass)';
}


}

/// @nodoc
abstract mixin class _$MediaOverlayStyleInfoCopyWith<$Res> implements $MediaOverlayStyleInfoCopyWith<$Res> {
  factory _$MediaOverlayStyleInfoCopyWith(_MediaOverlayStyleInfo value, $Res Function(_MediaOverlayStyleInfo) _then) = __$MediaOverlayStyleInfoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'active-class') String? activeClass,@JsonKey(name: 'playback-active-class') String? playbackActiveClass
});




}
/// @nodoc
class __$MediaOverlayStyleInfoCopyWithImpl<$Res>
    implements _$MediaOverlayStyleInfoCopyWith<$Res> {
  __$MediaOverlayStyleInfoCopyWithImpl(this._self, this._then);

  final _MediaOverlayStyleInfo _self;
  final $Res Function(_MediaOverlayStyleInfo) _then;

/// Create a copy of MediaOverlayStyleInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeClass = freezed,Object? playbackActiveClass = freezed,}) {
  return _then(_MediaOverlayStyleInfo(
activeClass: freezed == activeClass ? _self.activeClass : activeClass // ignore: cast_nullable_to_non_nullable
as String?,playbackActiveClass: freezed == playbackActiveClass ? _self.playbackActiveClass : playbackActiveClass // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
