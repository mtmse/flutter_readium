// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'publication_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PublicationCollection {

 List<Link> get links; Map<String, dynamic> get metadata;/// JSON key used to reference this collection in its parent.
 String? get role;/// SubCollections indexed by their role in this collection.
 List<PublicationCollection>? get subCollections;
/// Create a copy of PublicationCollection
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicationCollectionCopyWith<PublicationCollection> get copyWith => _$PublicationCollectionCopyWithImpl<PublicationCollection>(this as PublicationCollection, _$identity);

  /// Serializes this PublicationCollection to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicationCollection&&const DeepCollectionEquality().equals(other.links, links)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.subCollections, subCollections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(links),const DeepCollectionEquality().hash(metadata),role,const DeepCollectionEquality().hash(subCollections));

@override
String toString() {
  return 'PublicationCollection(links: $links, metadata: $metadata, role: $role, subCollections: $subCollections)';
}


}

/// @nodoc
abstract mixin class $PublicationCollectionCopyWith<$Res>  {
  factory $PublicationCollectionCopyWith(PublicationCollection value, $Res Function(PublicationCollection) _then) = _$PublicationCollectionCopyWithImpl;
@useResult
$Res call({
 List<Link> links, Map<String, dynamic> metadata, String? role, List<PublicationCollection>? subCollections
});




}
/// @nodoc
class _$PublicationCollectionCopyWithImpl<$Res>
    implements $PublicationCollectionCopyWith<$Res> {
  _$PublicationCollectionCopyWithImpl(this._self, this._then);

  final PublicationCollection _self;
  final $Res Function(PublicationCollection) _then;

/// Create a copy of PublicationCollection
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? links = null,Object? metadata = null,Object? role = freezed,Object? subCollections = freezed,}) {
  return _then(_self.copyWith(
links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<Link>,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,subCollections: freezed == subCollections ? _self.subCollections : subCollections // ignore: cast_nullable_to_non_nullable
as List<PublicationCollection>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicationCollection].
extension PublicationCollectionPatterns on PublicationCollection {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicationCollection value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicationCollection() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicationCollection value)  $default,){
final _that = this;
switch (_that) {
case _PublicationCollection():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicationCollection value)?  $default,){
final _that = this;
switch (_that) {
case _PublicationCollection() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Link> links,  Map<String, dynamic> metadata,  String? role,  List<PublicationCollection>? subCollections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicationCollection() when $default != null:
return $default(_that.links,_that.metadata,_that.role,_that.subCollections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Link> links,  Map<String, dynamic> metadata,  String? role,  List<PublicationCollection>? subCollections)  $default,) {final _that = this;
switch (_that) {
case _PublicationCollection():
return $default(_that.links,_that.metadata,_that.role,_that.subCollections);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Link> links,  Map<String, dynamic> metadata,  String? role,  List<PublicationCollection>? subCollections)?  $default,) {final _that = this;
switch (_that) {
case _PublicationCollection() when $default != null:
return $default(_that.links,_that.metadata,_that.role,_that.subCollections);case _:
  return null;

}
}

}

/// @nodoc

@r2JsonSerializable
class _PublicationCollection implements PublicationCollection {
  const _PublicationCollection({required this.links, required this.metadata, this.role, this.subCollections});
  factory _PublicationCollection.fromJson(Map<String, dynamic> json) => _$PublicationCollectionFromJson(json);

@override final  List<Link> links;
@override final  Map<String, dynamic> metadata;
/// JSON key used to reference this collection in its parent.
@override final  String? role;
/// SubCollections indexed by their role in this collection.
@override final  List<PublicationCollection>? subCollections;

/// Create a copy of PublicationCollection
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicationCollectionCopyWith<_PublicationCollection> get copyWith => __$PublicationCollectionCopyWithImpl<_PublicationCollection>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicationCollectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicationCollection&&const DeepCollectionEquality().equals(other.links, links)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.subCollections, subCollections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(links),const DeepCollectionEquality().hash(metadata),role,const DeepCollectionEquality().hash(subCollections));

@override
String toString() {
  return 'PublicationCollection(links: $links, metadata: $metadata, role: $role, subCollections: $subCollections)';
}


}

/// @nodoc
abstract mixin class _$PublicationCollectionCopyWith<$Res> implements $PublicationCollectionCopyWith<$Res> {
  factory _$PublicationCollectionCopyWith(_PublicationCollection value, $Res Function(_PublicationCollection) _then) = __$PublicationCollectionCopyWithImpl;
@override @useResult
$Res call({
 List<Link> links, Map<String, dynamic> metadata, String? role, List<PublicationCollection>? subCollections
});




}
/// @nodoc
class __$PublicationCollectionCopyWithImpl<$Res>
    implements _$PublicationCollectionCopyWith<$Res> {
  __$PublicationCollectionCopyWithImpl(this._self, this._then);

  final _PublicationCollection _self;
  final $Res Function(_PublicationCollection) _then;

/// Create a copy of PublicationCollection
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? links = null,Object? metadata = null,Object? role = freezed,Object? subCollections = freezed,}) {
  return _then(_PublicationCollection(
links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<Link>,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,subCollections: freezed == subCollections ? _self.subCollections : subCollections // ignore: cast_nullable_to_non_nullable
as List<PublicationCollection>?,
  ));
}


}

// dart format on
