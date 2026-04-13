// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contributor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Contributor {

/// anyOf:
///   String
///   Map<String, String>
///
/// "additionalProperties": false,
/// "minProperties": 1
@localizeStringMapJson Map<String, String> get name;/// "format": "uri"
 String? get identifier; List<Link>? get links; double? get position;/// anyOf:
///   String
///   List<String>
@stringListJson List<String>? get role;@localizeStringMapJsonNullable Map<String, String>? get sortAs;@JsonKey(name: 'x-of-total') double? get xOfTotal;
/// Create a copy of Contributor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContributorCopyWith<Contributor> get copyWith => _$ContributorCopyWithImpl<Contributor>(this as Contributor, _$identity);

  /// Serializes this Contributor to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Contributor&&const DeepCollectionEquality().equals(other.name, name)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&const DeepCollectionEquality().equals(other.links, links)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.role, role)&&const DeepCollectionEquality().equals(other.sortAs, sortAs)&&(identical(other.xOfTotal, xOfTotal) || other.xOfTotal == xOfTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(name),identifier,const DeepCollectionEquality().hash(links),position,const DeepCollectionEquality().hash(role),const DeepCollectionEquality().hash(sortAs),xOfTotal);

@override
String toString() {
  return 'Contributor(name: $name, identifier: $identifier, links: $links, position: $position, role: $role, sortAs: $sortAs, xOfTotal: $xOfTotal)';
}


}

/// @nodoc
abstract mixin class $ContributorCopyWith<$Res>  {
  factory $ContributorCopyWith(Contributor value, $Res Function(Contributor) _then) = _$ContributorCopyWithImpl;
@useResult
$Res call({
@localizeStringMapJson Map<String, String> name, String? identifier, List<Link>? links, double? position,@stringListJson List<String>? role,@localizeStringMapJsonNullable Map<String, String>? sortAs,@JsonKey(name: 'x-of-total') double? xOfTotal
});




}
/// @nodoc
class _$ContributorCopyWithImpl<$Res>
    implements $ContributorCopyWith<$Res> {
  _$ContributorCopyWithImpl(this._self, this._then);

  final Contributor _self;
  final $Res Function(Contributor) _then;

/// Create a copy of Contributor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? identifier = freezed,Object? links = freezed,Object? position = freezed,Object? role = freezed,Object? sortAs = freezed,Object? xOfTotal = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Map<String, String>,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<Link>?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as double?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as List<String>?,sortAs: freezed == sortAs ? _self.sortAs : sortAs // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,xOfTotal: freezed == xOfTotal ? _self.xOfTotal : xOfTotal // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Contributor].
extension ContributorPatterns on Contributor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Contributor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Contributor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Contributor value)  $default,){
final _that = this;
switch (_that) {
case _Contributor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Contributor value)?  $default,){
final _that = this;
switch (_that) {
case _Contributor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@localizeStringMapJson  Map<String, String> name,  String? identifier,  List<Link>? links,  double? position, @stringListJson  List<String>? role, @localizeStringMapJsonNullable  Map<String, String>? sortAs, @JsonKey(name: 'x-of-total')  double? xOfTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Contributor() when $default != null:
return $default(_that.name,_that.identifier,_that.links,_that.position,_that.role,_that.sortAs,_that.xOfTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@localizeStringMapJson  Map<String, String> name,  String? identifier,  List<Link>? links,  double? position, @stringListJson  List<String>? role, @localizeStringMapJsonNullable  Map<String, String>? sortAs, @JsonKey(name: 'x-of-total')  double? xOfTotal)  $default,) {final _that = this;
switch (_that) {
case _Contributor():
return $default(_that.name,_that.identifier,_that.links,_that.position,_that.role,_that.sortAs,_that.xOfTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@localizeStringMapJson  Map<String, String> name,  String? identifier,  List<Link>? links,  double? position, @stringListJson  List<String>? role, @localizeStringMapJsonNullable  Map<String, String>? sortAs, @JsonKey(name: 'x-of-total')  double? xOfTotal)?  $default,) {final _that = this;
switch (_that) {
case _Contributor() when $default != null:
return $default(_that.name,_that.identifier,_that.links,_that.position,_that.role,_that.sortAs,_that.xOfTotal);case _:
  return null;

}
}

}

/// @nodoc

@r2JsonSerializable
class _Contributor implements Contributor {
  const _Contributor({@localizeStringMapJson required this.name, this.identifier, this.links, this.position, @stringListJson this.role, @localizeStringMapJsonNullable this.sortAs, @JsonKey(name: 'x-of-total') this.xOfTotal});
  factory _Contributor.fromJson(Map<String, dynamic> json) => _$ContributorFromJson(json);

/// anyOf:
///   String
///   Map<String, String>
///
/// "additionalProperties": false,
/// "minProperties": 1
@override@localizeStringMapJson final  Map<String, String> name;
/// "format": "uri"
@override final  String? identifier;
@override final  List<Link>? links;
@override final  double? position;
/// anyOf:
///   String
///   List<String>
@override@stringListJson final  List<String>? role;
@override@localizeStringMapJsonNullable final  Map<String, String>? sortAs;
@override@JsonKey(name: 'x-of-total') final  double? xOfTotal;

/// Create a copy of Contributor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContributorCopyWith<_Contributor> get copyWith => __$ContributorCopyWithImpl<_Contributor>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContributorToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Contributor&&const DeepCollectionEquality().equals(other.name, name)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&const DeepCollectionEquality().equals(other.links, links)&&(identical(other.position, position) || other.position == position)&&const DeepCollectionEquality().equals(other.role, role)&&const DeepCollectionEquality().equals(other.sortAs, sortAs)&&(identical(other.xOfTotal, xOfTotal) || other.xOfTotal == xOfTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(name),identifier,const DeepCollectionEquality().hash(links),position,const DeepCollectionEquality().hash(role),const DeepCollectionEquality().hash(sortAs),xOfTotal);

@override
String toString() {
  return 'Contributor(name: $name, identifier: $identifier, links: $links, position: $position, role: $role, sortAs: $sortAs, xOfTotal: $xOfTotal)';
}


}

/// @nodoc
abstract mixin class _$ContributorCopyWith<$Res> implements $ContributorCopyWith<$Res> {
  factory _$ContributorCopyWith(_Contributor value, $Res Function(_Contributor) _then) = __$ContributorCopyWithImpl;
@override @useResult
$Res call({
@localizeStringMapJson Map<String, String> name, String? identifier, List<Link>? links, double? position,@stringListJson List<String>? role,@localizeStringMapJsonNullable Map<String, String>? sortAs,@JsonKey(name: 'x-of-total') double? xOfTotal
});




}
/// @nodoc
class __$ContributorCopyWithImpl<$Res>
    implements _$ContributorCopyWith<$Res> {
  __$ContributorCopyWithImpl(this._self, this._then);

  final _Contributor _self;
  final $Res Function(_Contributor) _then;

/// Create a copy of Contributor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? identifier = freezed,Object? links = freezed,Object? position = freezed,Object? role = freezed,Object? sortAs = freezed,Object? xOfTotal = freezed,}) {
  return _then(_Contributor(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Map<String, String>,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<Link>?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as double?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as List<String>?,sortAs: freezed == sortAs ? _self.sortAs : sortAs // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,xOfTotal: freezed == xOfTotal ? _self.xOfTotal : xOfTotal // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
