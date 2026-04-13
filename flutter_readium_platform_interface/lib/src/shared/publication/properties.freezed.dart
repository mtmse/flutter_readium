// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'properties.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Properties {

/// Indicated the availability of a given resource.
 Availability? get availability;/// Library-specific feature that contains information about the copies that
/// a library has acquired.
 Copies? get copies;/// Library-specific features when a specific book is unavailable but
/// provides a hold list.
 Holds? get holds;/// Indirect acquisition provides a hint for the expected media type that
/// will be acquired after additional steps.
 List<Acquisition>? get indirectAcquisition;/// Provide a hint about the expected number of items returned.
///
/// "minimum": 0
 int? get numberOfItems;/// The price of a publication is tied to its acquisition link.
 Price? get price;/// "uniqueItems": true
 List<Contain>? get contains;/// Indicates that a resource is encrypted/obfuscated and provides relevant
/// information for decryption.
 Encrypted? get encrypted;/// Hints how the layout of the resource should be presented.
 Layout? get layout;/// Specifies whether or not the parts of a linked resource that flow out of
/// the viewport are clipped.
 bool? get clipped;/// Specifies constraints for the presentation of a linked resource within
/// the viewport.
 Fit? get fit;/// Suggested orientation for the device when displaying the linked
/// resource.
 Orientation? get orientation;/// Indicates how the linked resource should be displayed in a reading
/// environment that displays synthetic spreads.
 Page? get page;/// Indicates the condition to be met for the linked resource to be rendered
/// within a synthetic spread.
 Spread? get spread;
/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertiesCopyWith<Properties> get copyWith => _$PropertiesCopyWithImpl<Properties>(this as Properties, _$identity);

  /// Serializes this Properties to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Properties&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.copies, copies) || other.copies == copies)&&(identical(other.holds, holds) || other.holds == holds)&&const DeepCollectionEquality().equals(other.indirectAcquisition, indirectAcquisition)&&(identical(other.numberOfItems, numberOfItems) || other.numberOfItems == numberOfItems)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other.contains, contains)&&(identical(other.encrypted, encrypted) || other.encrypted == encrypted)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.clipped, clipped) || other.clipped == clipped)&&(identical(other.fit, fit) || other.fit == fit)&&(identical(other.orientation, orientation) || other.orientation == orientation)&&(identical(other.page, page) || other.page == page)&&(identical(other.spread, spread) || other.spread == spread));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,availability,copies,holds,const DeepCollectionEquality().hash(indirectAcquisition),numberOfItems,price,const DeepCollectionEquality().hash(contains),encrypted,layout,clipped,fit,orientation,page,spread);

@override
String toString() {
  return 'Properties(availability: $availability, copies: $copies, holds: $holds, indirectAcquisition: $indirectAcquisition, numberOfItems: $numberOfItems, price: $price, contains: $contains, encrypted: $encrypted, layout: $layout, clipped: $clipped, fit: $fit, orientation: $orientation, page: $page, spread: $spread)';
}


}

/// @nodoc
abstract mixin class $PropertiesCopyWith<$Res>  {
  factory $PropertiesCopyWith(Properties value, $Res Function(Properties) _then) = _$PropertiesCopyWithImpl;
@useResult
$Res call({
 Availability? availability, Copies? copies, Holds? holds, List<Acquisition>? indirectAcquisition, int? numberOfItems, Price? price, List<Contain>? contains, Encrypted? encrypted, Layout? layout, bool? clipped, Fit? fit, Orientation? orientation, Page? page, Spread? spread
});


$AvailabilityCopyWith<$Res>? get availability;$CopiesCopyWith<$Res>? get copies;$HoldsCopyWith<$Res>? get holds;$PriceCopyWith<$Res>? get price;$EncryptedCopyWith<$Res>? get encrypted;

}
/// @nodoc
class _$PropertiesCopyWithImpl<$Res>
    implements $PropertiesCopyWith<$Res> {
  _$PropertiesCopyWithImpl(this._self, this._then);

  final Properties _self;
  final $Res Function(Properties) _then;

/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? availability = freezed,Object? copies = freezed,Object? holds = freezed,Object? indirectAcquisition = freezed,Object? numberOfItems = freezed,Object? price = freezed,Object? contains = freezed,Object? encrypted = freezed,Object? layout = freezed,Object? clipped = freezed,Object? fit = freezed,Object? orientation = freezed,Object? page = freezed,Object? spread = freezed,}) {
  return _then(_self.copyWith(
availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as Availability?,copies: freezed == copies ? _self.copies : copies // ignore: cast_nullable_to_non_nullable
as Copies?,holds: freezed == holds ? _self.holds : holds // ignore: cast_nullable_to_non_nullable
as Holds?,indirectAcquisition: freezed == indirectAcquisition ? _self.indirectAcquisition : indirectAcquisition // ignore: cast_nullable_to_non_nullable
as List<Acquisition>?,numberOfItems: freezed == numberOfItems ? _self.numberOfItems : numberOfItems // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Price?,contains: freezed == contains ? _self.contains : contains // ignore: cast_nullable_to_non_nullable
as List<Contain>?,encrypted: freezed == encrypted ? _self.encrypted : encrypted // ignore: cast_nullable_to_non_nullable
as Encrypted?,layout: freezed == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as Layout?,clipped: freezed == clipped ? _self.clipped : clipped // ignore: cast_nullable_to_non_nullable
as bool?,fit: freezed == fit ? _self.fit : fit // ignore: cast_nullable_to_non_nullable
as Fit?,orientation: freezed == orientation ? _self.orientation : orientation // ignore: cast_nullable_to_non_nullable
as Orientation?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as Page?,spread: freezed == spread ? _self.spread : spread // ignore: cast_nullable_to_non_nullable
as Spread?,
  ));
}
/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvailabilityCopyWith<$Res>? get availability {
    if (_self.availability == null) {
    return null;
  }

  return $AvailabilityCopyWith<$Res>(_self.availability!, (value) {
    return _then(_self.copyWith(availability: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CopiesCopyWith<$Res>? get copies {
    if (_self.copies == null) {
    return null;
  }

  return $CopiesCopyWith<$Res>(_self.copies!, (value) {
    return _then(_self.copyWith(copies: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HoldsCopyWith<$Res>? get holds {
    if (_self.holds == null) {
    return null;
  }

  return $HoldsCopyWith<$Res>(_self.holds!, (value) {
    return _then(_self.copyWith(holds: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res>? get price {
    if (_self.price == null) {
    return null;
  }

  return $PriceCopyWith<$Res>(_self.price!, (value) {
    return _then(_self.copyWith(price: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptedCopyWith<$Res>? get encrypted {
    if (_self.encrypted == null) {
    return null;
  }

  return $EncryptedCopyWith<$Res>(_self.encrypted!, (value) {
    return _then(_self.copyWith(encrypted: value));
  });
}
}


/// Adds pattern-matching-related methods to [Properties].
extension PropertiesPatterns on Properties {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Properties value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Properties() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Properties value)  $default,){
final _that = this;
switch (_that) {
case _Properties():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Properties value)?  $default,){
final _that = this;
switch (_that) {
case _Properties() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Availability? availability,  Copies? copies,  Holds? holds,  List<Acquisition>? indirectAcquisition,  int? numberOfItems,  Price? price,  List<Contain>? contains,  Encrypted? encrypted,  Layout? layout,  bool? clipped,  Fit? fit,  Orientation? orientation,  Page? page,  Spread? spread)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Properties() when $default != null:
return $default(_that.availability,_that.copies,_that.holds,_that.indirectAcquisition,_that.numberOfItems,_that.price,_that.contains,_that.encrypted,_that.layout,_that.clipped,_that.fit,_that.orientation,_that.page,_that.spread);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Availability? availability,  Copies? copies,  Holds? holds,  List<Acquisition>? indirectAcquisition,  int? numberOfItems,  Price? price,  List<Contain>? contains,  Encrypted? encrypted,  Layout? layout,  bool? clipped,  Fit? fit,  Orientation? orientation,  Page? page,  Spread? spread)  $default,) {final _that = this;
switch (_that) {
case _Properties():
return $default(_that.availability,_that.copies,_that.holds,_that.indirectAcquisition,_that.numberOfItems,_that.price,_that.contains,_that.encrypted,_that.layout,_that.clipped,_that.fit,_that.orientation,_that.page,_that.spread);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Availability? availability,  Copies? copies,  Holds? holds,  List<Acquisition>? indirectAcquisition,  int? numberOfItems,  Price? price,  List<Contain>? contains,  Encrypted? encrypted,  Layout? layout,  bool? clipped,  Fit? fit,  Orientation? orientation,  Page? page,  Spread? spread)?  $default,) {final _that = this;
switch (_that) {
case _Properties() when $default != null:
return $default(_that.availability,_that.copies,_that.holds,_that.indirectAcquisition,_that.numberOfItems,_that.price,_that.contains,_that.encrypted,_that.layout,_that.clipped,_that.fit,_that.orientation,_that.page,_that.spread);case _:
  return null;

}
}

}

/// @nodoc

@r2JsonSerializable
class _Properties extends Properties {
  const _Properties({this.availability, this.copies, this.holds, this.indirectAcquisition, this.numberOfItems, this.price, this.contains, this.encrypted, this.layout, this.clipped, this.fit, this.orientation, this.page, this.spread}): assert(numberOfItems == null || numberOfItems >= 0),super._();
  factory _Properties.fromJson(Map<String, dynamic> json) => _$PropertiesFromJson(json);

/// Indicated the availability of a given resource.
@override final  Availability? availability;
/// Library-specific feature that contains information about the copies that
/// a library has acquired.
@override final  Copies? copies;
/// Library-specific features when a specific book is unavailable but
/// provides a hold list.
@override final  Holds? holds;
/// Indirect acquisition provides a hint for the expected media type that
/// will be acquired after additional steps.
@override final  List<Acquisition>? indirectAcquisition;
/// Provide a hint about the expected number of items returned.
///
/// "minimum": 0
@override final  int? numberOfItems;
/// The price of a publication is tied to its acquisition link.
@override final  Price? price;
/// "uniqueItems": true
@override final  List<Contain>? contains;
/// Indicates that a resource is encrypted/obfuscated and provides relevant
/// information for decryption.
@override final  Encrypted? encrypted;
/// Hints how the layout of the resource should be presented.
@override final  Layout? layout;
/// Specifies whether or not the parts of a linked resource that flow out of
/// the viewport are clipped.
@override final  bool? clipped;
/// Specifies constraints for the presentation of a linked resource within
/// the viewport.
@override final  Fit? fit;
/// Suggested orientation for the device when displaying the linked
/// resource.
@override final  Orientation? orientation;
/// Indicates how the linked resource should be displayed in a reading
/// environment that displays synthetic spreads.
@override final  Page? page;
/// Indicates the condition to be met for the linked resource to be rendered
/// within a synthetic spread.
@override final  Spread? spread;

/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertiesCopyWith<_Properties> get copyWith => __$PropertiesCopyWithImpl<_Properties>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertiesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Properties&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.copies, copies) || other.copies == copies)&&(identical(other.holds, holds) || other.holds == holds)&&const DeepCollectionEquality().equals(other.indirectAcquisition, indirectAcquisition)&&(identical(other.numberOfItems, numberOfItems) || other.numberOfItems == numberOfItems)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other.contains, contains)&&(identical(other.encrypted, encrypted) || other.encrypted == encrypted)&&(identical(other.layout, layout) || other.layout == layout)&&(identical(other.clipped, clipped) || other.clipped == clipped)&&(identical(other.fit, fit) || other.fit == fit)&&(identical(other.orientation, orientation) || other.orientation == orientation)&&(identical(other.page, page) || other.page == page)&&(identical(other.spread, spread) || other.spread == spread));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,availability,copies,holds,const DeepCollectionEquality().hash(indirectAcquisition),numberOfItems,price,const DeepCollectionEquality().hash(contains),encrypted,layout,clipped,fit,orientation,page,spread);

@override
String toString() {
  return 'Properties(availability: $availability, copies: $copies, holds: $holds, indirectAcquisition: $indirectAcquisition, numberOfItems: $numberOfItems, price: $price, contains: $contains, encrypted: $encrypted, layout: $layout, clipped: $clipped, fit: $fit, orientation: $orientation, page: $page, spread: $spread)';
}


}

/// @nodoc
abstract mixin class _$PropertiesCopyWith<$Res> implements $PropertiesCopyWith<$Res> {
  factory _$PropertiesCopyWith(_Properties value, $Res Function(_Properties) _then) = __$PropertiesCopyWithImpl;
@override @useResult
$Res call({
 Availability? availability, Copies? copies, Holds? holds, List<Acquisition>? indirectAcquisition, int? numberOfItems, Price? price, List<Contain>? contains, Encrypted? encrypted, Layout? layout, bool? clipped, Fit? fit, Orientation? orientation, Page? page, Spread? spread
});


@override $AvailabilityCopyWith<$Res>? get availability;@override $CopiesCopyWith<$Res>? get copies;@override $HoldsCopyWith<$Res>? get holds;@override $PriceCopyWith<$Res>? get price;@override $EncryptedCopyWith<$Res>? get encrypted;

}
/// @nodoc
class __$PropertiesCopyWithImpl<$Res>
    implements _$PropertiesCopyWith<$Res> {
  __$PropertiesCopyWithImpl(this._self, this._then);

  final _Properties _self;
  final $Res Function(_Properties) _then;

/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? availability = freezed,Object? copies = freezed,Object? holds = freezed,Object? indirectAcquisition = freezed,Object? numberOfItems = freezed,Object? price = freezed,Object? contains = freezed,Object? encrypted = freezed,Object? layout = freezed,Object? clipped = freezed,Object? fit = freezed,Object? orientation = freezed,Object? page = freezed,Object? spread = freezed,}) {
  return _then(_Properties(
availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as Availability?,copies: freezed == copies ? _self.copies : copies // ignore: cast_nullable_to_non_nullable
as Copies?,holds: freezed == holds ? _self.holds : holds // ignore: cast_nullable_to_non_nullable
as Holds?,indirectAcquisition: freezed == indirectAcquisition ? _self.indirectAcquisition : indirectAcquisition // ignore: cast_nullable_to_non_nullable
as List<Acquisition>?,numberOfItems: freezed == numberOfItems ? _self.numberOfItems : numberOfItems // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as Price?,contains: freezed == contains ? _self.contains : contains // ignore: cast_nullable_to_non_nullable
as List<Contain>?,encrypted: freezed == encrypted ? _self.encrypted : encrypted // ignore: cast_nullable_to_non_nullable
as Encrypted?,layout: freezed == layout ? _self.layout : layout // ignore: cast_nullable_to_non_nullable
as Layout?,clipped: freezed == clipped ? _self.clipped : clipped // ignore: cast_nullable_to_non_nullable
as bool?,fit: freezed == fit ? _self.fit : fit // ignore: cast_nullable_to_non_nullable
as Fit?,orientation: freezed == orientation ? _self.orientation : orientation // ignore: cast_nullable_to_non_nullable
as Orientation?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as Page?,spread: freezed == spread ? _self.spread : spread // ignore: cast_nullable_to_non_nullable
as Spread?,
  ));
}

/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvailabilityCopyWith<$Res>? get availability {
    if (_self.availability == null) {
    return null;
  }

  return $AvailabilityCopyWith<$Res>(_self.availability!, (value) {
    return _then(_self.copyWith(availability: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CopiesCopyWith<$Res>? get copies {
    if (_self.copies == null) {
    return null;
  }

  return $CopiesCopyWith<$Res>(_self.copies!, (value) {
    return _then(_self.copyWith(copies: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HoldsCopyWith<$Res>? get holds {
    if (_self.holds == null) {
    return null;
  }

  return $HoldsCopyWith<$Res>(_self.holds!, (value) {
    return _then(_self.copyWith(holds: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PriceCopyWith<$Res>? get price {
    if (_self.price == null) {
    return null;
  }

  return $PriceCopyWith<$Res>(_self.price!, (value) {
    return _then(_self.copyWith(price: value));
  });
}/// Create a copy of Properties
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptedCopyWith<$Res>? get encrypted {
    if (_self.encrypted == null) {
    return null;
  }

  return $EncryptedCopyWith<$Res>(_self.encrypted!, (value) {
    return _then(_self.copyWith(encrypted: value));
  });
}
}

// dart format on
