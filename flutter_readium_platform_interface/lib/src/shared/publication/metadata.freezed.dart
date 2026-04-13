// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Metadata {

/// anyOf:
///   String
///   Map<String, String>
///
/// "additionalProperties": false,
/// "minProperties": 1
@localizeStringMapJson Map<String, String> get title;@stringListJson List<String>? get conformsTo;/// "format": "uri"
@JsonKey(name: '@type') String? get type;@contributorJson List<Contributor>? get artist;@contributorJson List<Contributor>? get author;@contributorJson List<Contributor>? get colorist;@contributorJson List<Contributor>? get contributor;@contributorJson List<Contributor>? get illustrator;@contributorJson List<Contributor>? get imprint;@contributorJson List<Contributor>? get inker;@contributorJson List<Contributor>? get penciler;@contributorJson List<Contributor>? get publisher;@contributorJson List<Contributor>? get letterer;@contributorJson List<Contributor>? get narrator;@contributorJson List<Contributor>? get translator;@contributorJson List<Contributor>? get editor;/// "exclusiveMinimum": 0
 double? get duration;/// "exclusiveMinimum": 0
 int? get numberOfPages; ReadingProgression get readingProgression;@localizeStringListJson List<String>? get language;@subjectJson List<Subject>? get subject;/// anyOf:
///   String
///   Map<String, String>
///
/// "additionalProperties": false,
/// "minProperties": 1
@localizeStringMapJsonNullable Map<String, String>? get subtitle; BelongsTo? get belongsTo; String? get description;/// "format": "uri"
 String? get identifier;@dateTimeLocal DateTime? get modified;@dateTimeLocal DateTime? get published; String? get sortAs; Presentation? get presentation;
/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetadataCopyWith<Metadata> get copyWith => _$MetadataCopyWithImpl<Metadata>(this as Metadata, _$identity);

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Metadata&&const DeepCollectionEquality().equals(other.title, title)&&const DeepCollectionEquality().equals(other.conformsTo, conformsTo)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.artist, artist)&&const DeepCollectionEquality().equals(other.author, author)&&const DeepCollectionEquality().equals(other.colorist, colorist)&&const DeepCollectionEquality().equals(other.contributor, contributor)&&const DeepCollectionEquality().equals(other.illustrator, illustrator)&&const DeepCollectionEquality().equals(other.imprint, imprint)&&const DeepCollectionEquality().equals(other.inker, inker)&&const DeepCollectionEquality().equals(other.penciler, penciler)&&const DeepCollectionEquality().equals(other.publisher, publisher)&&const DeepCollectionEquality().equals(other.letterer, letterer)&&const DeepCollectionEquality().equals(other.narrator, narrator)&&const DeepCollectionEquality().equals(other.translator, translator)&&const DeepCollectionEquality().equals(other.editor, editor)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.numberOfPages, numberOfPages) || other.numberOfPages == numberOfPages)&&(identical(other.readingProgression, readingProgression) || other.readingProgression == readingProgression)&&const DeepCollectionEquality().equals(other.language, language)&&const DeepCollectionEquality().equals(other.subject, subject)&&const DeepCollectionEquality().equals(other.subtitle, subtitle)&&(identical(other.belongsTo, belongsTo) || other.belongsTo == belongsTo)&&(identical(other.description, description) || other.description == description)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.published, published) || other.published == published)&&(identical(other.sortAs, sortAs) || other.sortAs == sortAs)&&(identical(other.presentation, presentation) || other.presentation == presentation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(title),const DeepCollectionEquality().hash(conformsTo),type,const DeepCollectionEquality().hash(artist),const DeepCollectionEquality().hash(author),const DeepCollectionEquality().hash(colorist),const DeepCollectionEquality().hash(contributor),const DeepCollectionEquality().hash(illustrator),const DeepCollectionEquality().hash(imprint),const DeepCollectionEquality().hash(inker),const DeepCollectionEquality().hash(penciler),const DeepCollectionEquality().hash(publisher),const DeepCollectionEquality().hash(letterer),const DeepCollectionEquality().hash(narrator),const DeepCollectionEquality().hash(translator),const DeepCollectionEquality().hash(editor),duration,numberOfPages,readingProgression,const DeepCollectionEquality().hash(language),const DeepCollectionEquality().hash(subject),const DeepCollectionEquality().hash(subtitle),belongsTo,description,identifier,modified,published,sortAs,presentation]);

@override
String toString() {
  return 'Metadata(title: $title, conformsTo: $conformsTo, type: $type, artist: $artist, author: $author, colorist: $colorist, contributor: $contributor, illustrator: $illustrator, imprint: $imprint, inker: $inker, penciler: $penciler, publisher: $publisher, letterer: $letterer, narrator: $narrator, translator: $translator, editor: $editor, duration: $duration, numberOfPages: $numberOfPages, readingProgression: $readingProgression, language: $language, subject: $subject, subtitle: $subtitle, belongsTo: $belongsTo, description: $description, identifier: $identifier, modified: $modified, published: $published, sortAs: $sortAs, presentation: $presentation)';
}


}

/// @nodoc
abstract mixin class $MetadataCopyWith<$Res>  {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) _then) = _$MetadataCopyWithImpl;
@useResult
$Res call({
@localizeStringMapJson Map<String, String> title,@stringListJson List<String>? conformsTo,@JsonKey(name: '@type') String? type,@contributorJson List<Contributor>? artist,@contributorJson List<Contributor>? author,@contributorJson List<Contributor>? colorist,@contributorJson List<Contributor>? contributor,@contributorJson List<Contributor>? illustrator,@contributorJson List<Contributor>? imprint,@contributorJson List<Contributor>? inker,@contributorJson List<Contributor>? penciler,@contributorJson List<Contributor>? publisher,@contributorJson List<Contributor>? letterer,@contributorJson List<Contributor>? narrator,@contributorJson List<Contributor>? translator,@contributorJson List<Contributor>? editor, double? duration, int? numberOfPages, ReadingProgression readingProgression,@localizeStringListJson List<String>? language,@subjectJson List<Subject>? subject,@localizeStringMapJsonNullable Map<String, String>? subtitle, BelongsTo? belongsTo, String? description, String? identifier,@dateTimeLocal DateTime? modified,@dateTimeLocal DateTime? published, String? sortAs, Presentation? presentation
});


$BelongsToCopyWith<$Res>? get belongsTo;$PresentationCopyWith<$Res>? get presentation;

}
/// @nodoc
class _$MetadataCopyWithImpl<$Res>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._self, this._then);

  final Metadata _self;
  final $Res Function(Metadata) _then;

/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? conformsTo = freezed,Object? type = freezed,Object? artist = freezed,Object? author = freezed,Object? colorist = freezed,Object? contributor = freezed,Object? illustrator = freezed,Object? imprint = freezed,Object? inker = freezed,Object? penciler = freezed,Object? publisher = freezed,Object? letterer = freezed,Object? narrator = freezed,Object? translator = freezed,Object? editor = freezed,Object? duration = freezed,Object? numberOfPages = freezed,Object? readingProgression = null,Object? language = freezed,Object? subject = freezed,Object? subtitle = freezed,Object? belongsTo = freezed,Object? description = freezed,Object? identifier = freezed,Object? modified = freezed,Object? published = freezed,Object? sortAs = freezed,Object? presentation = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Map<String, String>,conformsTo: freezed == conformsTo ? _self.conformsTo : conformsTo // ignore: cast_nullable_to_non_nullable
as List<String>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,colorist: freezed == colorist ? _self.colorist : colorist // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,contributor: freezed == contributor ? _self.contributor : contributor // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,illustrator: freezed == illustrator ? _self.illustrator : illustrator // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,imprint: freezed == imprint ? _self.imprint : imprint // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,inker: freezed == inker ? _self.inker : inker // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,penciler: freezed == penciler ? _self.penciler : penciler // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,letterer: freezed == letterer ? _self.letterer : letterer // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,narrator: freezed == narrator ? _self.narrator : narrator // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,translator: freezed == translator ? _self.translator : translator // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,editor: freezed == editor ? _self.editor : editor // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double?,numberOfPages: freezed == numberOfPages ? _self.numberOfPages : numberOfPages // ignore: cast_nullable_to_non_nullable
as int?,readingProgression: null == readingProgression ? _self.readingProgression : readingProgression // ignore: cast_nullable_to_non_nullable
as ReadingProgression,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as List<String>?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as List<Subject>?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,belongsTo: freezed == belongsTo ? _self.belongsTo : belongsTo // ignore: cast_nullable_to_non_nullable
as BelongsTo?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,modified: freezed == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as DateTime?,published: freezed == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as DateTime?,sortAs: freezed == sortAs ? _self.sortAs : sortAs // ignore: cast_nullable_to_non_nullable
as String?,presentation: freezed == presentation ? _self.presentation : presentation // ignore: cast_nullable_to_non_nullable
as Presentation?,
  ));
}
/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BelongsToCopyWith<$Res>? get belongsTo {
    if (_self.belongsTo == null) {
    return null;
  }

  return $BelongsToCopyWith<$Res>(_self.belongsTo!, (value) {
    return _then(_self.copyWith(belongsTo: value));
  });
}/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresentationCopyWith<$Res>? get presentation {
    if (_self.presentation == null) {
    return null;
  }

  return $PresentationCopyWith<$Res>(_self.presentation!, (value) {
    return _then(_self.copyWith(presentation: value));
  });
}
}


/// Adds pattern-matching-related methods to [Metadata].
extension MetadataPatterns on Metadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Metadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Metadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Metadata value)  $default,){
final _that = this;
switch (_that) {
case _Metadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Metadata value)?  $default,){
final _that = this;
switch (_that) {
case _Metadata() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@localizeStringMapJson  Map<String, String> title, @stringListJson  List<String>? conformsTo, @JsonKey(name: '@type')  String? type, @contributorJson  List<Contributor>? artist, @contributorJson  List<Contributor>? author, @contributorJson  List<Contributor>? colorist, @contributorJson  List<Contributor>? contributor, @contributorJson  List<Contributor>? illustrator, @contributorJson  List<Contributor>? imprint, @contributorJson  List<Contributor>? inker, @contributorJson  List<Contributor>? penciler, @contributorJson  List<Contributor>? publisher, @contributorJson  List<Contributor>? letterer, @contributorJson  List<Contributor>? narrator, @contributorJson  List<Contributor>? translator, @contributorJson  List<Contributor>? editor,  double? duration,  int? numberOfPages,  ReadingProgression readingProgression, @localizeStringListJson  List<String>? language, @subjectJson  List<Subject>? subject, @localizeStringMapJsonNullable  Map<String, String>? subtitle,  BelongsTo? belongsTo,  String? description,  String? identifier, @dateTimeLocal  DateTime? modified, @dateTimeLocal  DateTime? published,  String? sortAs,  Presentation? presentation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Metadata() when $default != null:
return $default(_that.title,_that.conformsTo,_that.type,_that.artist,_that.author,_that.colorist,_that.contributor,_that.illustrator,_that.imprint,_that.inker,_that.penciler,_that.publisher,_that.letterer,_that.narrator,_that.translator,_that.editor,_that.duration,_that.numberOfPages,_that.readingProgression,_that.language,_that.subject,_that.subtitle,_that.belongsTo,_that.description,_that.identifier,_that.modified,_that.published,_that.sortAs,_that.presentation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@localizeStringMapJson  Map<String, String> title, @stringListJson  List<String>? conformsTo, @JsonKey(name: '@type')  String? type, @contributorJson  List<Contributor>? artist, @contributorJson  List<Contributor>? author, @contributorJson  List<Contributor>? colorist, @contributorJson  List<Contributor>? contributor, @contributorJson  List<Contributor>? illustrator, @contributorJson  List<Contributor>? imprint, @contributorJson  List<Contributor>? inker, @contributorJson  List<Contributor>? penciler, @contributorJson  List<Contributor>? publisher, @contributorJson  List<Contributor>? letterer, @contributorJson  List<Contributor>? narrator, @contributorJson  List<Contributor>? translator, @contributorJson  List<Contributor>? editor,  double? duration,  int? numberOfPages,  ReadingProgression readingProgression, @localizeStringListJson  List<String>? language, @subjectJson  List<Subject>? subject, @localizeStringMapJsonNullable  Map<String, String>? subtitle,  BelongsTo? belongsTo,  String? description,  String? identifier, @dateTimeLocal  DateTime? modified, @dateTimeLocal  DateTime? published,  String? sortAs,  Presentation? presentation)  $default,) {final _that = this;
switch (_that) {
case _Metadata():
return $default(_that.title,_that.conformsTo,_that.type,_that.artist,_that.author,_that.colorist,_that.contributor,_that.illustrator,_that.imprint,_that.inker,_that.penciler,_that.publisher,_that.letterer,_that.narrator,_that.translator,_that.editor,_that.duration,_that.numberOfPages,_that.readingProgression,_that.language,_that.subject,_that.subtitle,_that.belongsTo,_that.description,_that.identifier,_that.modified,_that.published,_that.sortAs,_that.presentation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@localizeStringMapJson  Map<String, String> title, @stringListJson  List<String>? conformsTo, @JsonKey(name: '@type')  String? type, @contributorJson  List<Contributor>? artist, @contributorJson  List<Contributor>? author, @contributorJson  List<Contributor>? colorist, @contributorJson  List<Contributor>? contributor, @contributorJson  List<Contributor>? illustrator, @contributorJson  List<Contributor>? imprint, @contributorJson  List<Contributor>? inker, @contributorJson  List<Contributor>? penciler, @contributorJson  List<Contributor>? publisher, @contributorJson  List<Contributor>? letterer, @contributorJson  List<Contributor>? narrator, @contributorJson  List<Contributor>? translator, @contributorJson  List<Contributor>? editor,  double? duration,  int? numberOfPages,  ReadingProgression readingProgression, @localizeStringListJson  List<String>? language, @subjectJson  List<Subject>? subject, @localizeStringMapJsonNullable  Map<String, String>? subtitle,  BelongsTo? belongsTo,  String? description,  String? identifier, @dateTimeLocal  DateTime? modified, @dateTimeLocal  DateTime? published,  String? sortAs,  Presentation? presentation)?  $default,) {final _that = this;
switch (_that) {
case _Metadata() when $default != null:
return $default(_that.title,_that.conformsTo,_that.type,_that.artist,_that.author,_that.colorist,_that.contributor,_that.illustrator,_that.imprint,_that.inker,_that.penciler,_that.publisher,_that.letterer,_that.narrator,_that.translator,_that.editor,_that.duration,_that.numberOfPages,_that.readingProgression,_that.language,_that.subject,_that.subtitle,_that.belongsTo,_that.description,_that.identifier,_that.modified,_that.published,_that.sortAs,_that.presentation);case _:
  return null;

}
}

}

/// @nodoc

@r2JsonSerializable
class _Metadata implements Metadata {
  const _Metadata({@localizeStringMapJson required this.title, @stringListJson this.conformsTo, @JsonKey(name: '@type') this.type, @contributorJson this.artist, @contributorJson this.author, @contributorJson this.colorist, @contributorJson this.contributor, @contributorJson this.illustrator, @contributorJson this.imprint, @contributorJson this.inker, @contributorJson this.penciler, @contributorJson this.publisher, @contributorJson this.letterer, @contributorJson this.narrator, @contributorJson this.translator, @contributorJson this.editor, this.duration, this.numberOfPages, this.readingProgression = ReadingProgression.auto, @localizeStringListJson this.language, @subjectJson this.subject, @localizeStringMapJsonNullable this.subtitle, this.belongsTo, this.description, this.identifier, @dateTimeLocal this.modified, @dateTimeLocal this.published, this.sortAs, this.presentation}): assert(duration == null || duration > 0.0),assert(numberOfPages == null || numberOfPages >= 1);
  factory _Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

/// anyOf:
///   String
///   Map<String, String>
///
/// "additionalProperties": false,
/// "minProperties": 1
@override@localizeStringMapJson final  Map<String, String> title;
@override@stringListJson final  List<String>? conformsTo;
/// "format": "uri"
@override@JsonKey(name: '@type') final  String? type;
@override@contributorJson final  List<Contributor>? artist;
@override@contributorJson final  List<Contributor>? author;
@override@contributorJson final  List<Contributor>? colorist;
@override@contributorJson final  List<Contributor>? contributor;
@override@contributorJson final  List<Contributor>? illustrator;
@override@contributorJson final  List<Contributor>? imprint;
@override@contributorJson final  List<Contributor>? inker;
@override@contributorJson final  List<Contributor>? penciler;
@override@contributorJson final  List<Contributor>? publisher;
@override@contributorJson final  List<Contributor>? letterer;
@override@contributorJson final  List<Contributor>? narrator;
@override@contributorJson final  List<Contributor>? translator;
@override@contributorJson final  List<Contributor>? editor;
/// "exclusiveMinimum": 0
@override final  double? duration;
/// "exclusiveMinimum": 0
@override final  int? numberOfPages;
@override@JsonKey() final  ReadingProgression readingProgression;
@override@localizeStringListJson final  List<String>? language;
@override@subjectJson final  List<Subject>? subject;
/// anyOf:
///   String
///   Map<String, String>
///
/// "additionalProperties": false,
/// "minProperties": 1
@override@localizeStringMapJsonNullable final  Map<String, String>? subtitle;
@override final  BelongsTo? belongsTo;
@override final  String? description;
/// "format": "uri"
@override final  String? identifier;
@override@dateTimeLocal final  DateTime? modified;
@override@dateTimeLocal final  DateTime? published;
@override final  String? sortAs;
@override final  Presentation? presentation;

/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetadataCopyWith<_Metadata> get copyWith => __$MetadataCopyWithImpl<_Metadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Metadata&&const DeepCollectionEquality().equals(other.title, title)&&const DeepCollectionEquality().equals(other.conformsTo, conformsTo)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.artist, artist)&&const DeepCollectionEquality().equals(other.author, author)&&const DeepCollectionEquality().equals(other.colorist, colorist)&&const DeepCollectionEquality().equals(other.contributor, contributor)&&const DeepCollectionEquality().equals(other.illustrator, illustrator)&&const DeepCollectionEquality().equals(other.imprint, imprint)&&const DeepCollectionEquality().equals(other.inker, inker)&&const DeepCollectionEquality().equals(other.penciler, penciler)&&const DeepCollectionEquality().equals(other.publisher, publisher)&&const DeepCollectionEquality().equals(other.letterer, letterer)&&const DeepCollectionEquality().equals(other.narrator, narrator)&&const DeepCollectionEquality().equals(other.translator, translator)&&const DeepCollectionEquality().equals(other.editor, editor)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.numberOfPages, numberOfPages) || other.numberOfPages == numberOfPages)&&(identical(other.readingProgression, readingProgression) || other.readingProgression == readingProgression)&&const DeepCollectionEquality().equals(other.language, language)&&const DeepCollectionEquality().equals(other.subject, subject)&&const DeepCollectionEquality().equals(other.subtitle, subtitle)&&(identical(other.belongsTo, belongsTo) || other.belongsTo == belongsTo)&&(identical(other.description, description) || other.description == description)&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.published, published) || other.published == published)&&(identical(other.sortAs, sortAs) || other.sortAs == sortAs)&&(identical(other.presentation, presentation) || other.presentation == presentation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(title),const DeepCollectionEquality().hash(conformsTo),type,const DeepCollectionEquality().hash(artist),const DeepCollectionEquality().hash(author),const DeepCollectionEquality().hash(colorist),const DeepCollectionEquality().hash(contributor),const DeepCollectionEquality().hash(illustrator),const DeepCollectionEquality().hash(imprint),const DeepCollectionEquality().hash(inker),const DeepCollectionEquality().hash(penciler),const DeepCollectionEquality().hash(publisher),const DeepCollectionEquality().hash(letterer),const DeepCollectionEquality().hash(narrator),const DeepCollectionEquality().hash(translator),const DeepCollectionEquality().hash(editor),duration,numberOfPages,readingProgression,const DeepCollectionEquality().hash(language),const DeepCollectionEquality().hash(subject),const DeepCollectionEquality().hash(subtitle),belongsTo,description,identifier,modified,published,sortAs,presentation]);

@override
String toString() {
  return 'Metadata(title: $title, conformsTo: $conformsTo, type: $type, artist: $artist, author: $author, colorist: $colorist, contributor: $contributor, illustrator: $illustrator, imprint: $imprint, inker: $inker, penciler: $penciler, publisher: $publisher, letterer: $letterer, narrator: $narrator, translator: $translator, editor: $editor, duration: $duration, numberOfPages: $numberOfPages, readingProgression: $readingProgression, language: $language, subject: $subject, subtitle: $subtitle, belongsTo: $belongsTo, description: $description, identifier: $identifier, modified: $modified, published: $published, sortAs: $sortAs, presentation: $presentation)';
}


}

/// @nodoc
abstract mixin class _$MetadataCopyWith<$Res> implements $MetadataCopyWith<$Res> {
  factory _$MetadataCopyWith(_Metadata value, $Res Function(_Metadata) _then) = __$MetadataCopyWithImpl;
@override @useResult
$Res call({
@localizeStringMapJson Map<String, String> title,@stringListJson List<String>? conformsTo,@JsonKey(name: '@type') String? type,@contributorJson List<Contributor>? artist,@contributorJson List<Contributor>? author,@contributorJson List<Contributor>? colorist,@contributorJson List<Contributor>? contributor,@contributorJson List<Contributor>? illustrator,@contributorJson List<Contributor>? imprint,@contributorJson List<Contributor>? inker,@contributorJson List<Contributor>? penciler,@contributorJson List<Contributor>? publisher,@contributorJson List<Contributor>? letterer,@contributorJson List<Contributor>? narrator,@contributorJson List<Contributor>? translator,@contributorJson List<Contributor>? editor, double? duration, int? numberOfPages, ReadingProgression readingProgression,@localizeStringListJson List<String>? language,@subjectJson List<Subject>? subject,@localizeStringMapJsonNullable Map<String, String>? subtitle, BelongsTo? belongsTo, String? description, String? identifier,@dateTimeLocal DateTime? modified,@dateTimeLocal DateTime? published, String? sortAs, Presentation? presentation
});


@override $BelongsToCopyWith<$Res>? get belongsTo;@override $PresentationCopyWith<$Res>? get presentation;

}
/// @nodoc
class __$MetadataCopyWithImpl<$Res>
    implements _$MetadataCopyWith<$Res> {
  __$MetadataCopyWithImpl(this._self, this._then);

  final _Metadata _self;
  final $Res Function(_Metadata) _then;

/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? conformsTo = freezed,Object? type = freezed,Object? artist = freezed,Object? author = freezed,Object? colorist = freezed,Object? contributor = freezed,Object? illustrator = freezed,Object? imprint = freezed,Object? inker = freezed,Object? penciler = freezed,Object? publisher = freezed,Object? letterer = freezed,Object? narrator = freezed,Object? translator = freezed,Object? editor = freezed,Object? duration = freezed,Object? numberOfPages = freezed,Object? readingProgression = null,Object? language = freezed,Object? subject = freezed,Object? subtitle = freezed,Object? belongsTo = freezed,Object? description = freezed,Object? identifier = freezed,Object? modified = freezed,Object? published = freezed,Object? sortAs = freezed,Object? presentation = freezed,}) {
  return _then(_Metadata(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as Map<String, String>,conformsTo: freezed == conformsTo ? _self.conformsTo : conformsTo // ignore: cast_nullable_to_non_nullable
as List<String>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,artist: freezed == artist ? _self.artist : artist // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,colorist: freezed == colorist ? _self.colorist : colorist // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,contributor: freezed == contributor ? _self.contributor : contributor // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,illustrator: freezed == illustrator ? _self.illustrator : illustrator // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,imprint: freezed == imprint ? _self.imprint : imprint // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,inker: freezed == inker ? _self.inker : inker // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,penciler: freezed == penciler ? _self.penciler : penciler // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,letterer: freezed == letterer ? _self.letterer : letterer // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,narrator: freezed == narrator ? _self.narrator : narrator // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,translator: freezed == translator ? _self.translator : translator // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,editor: freezed == editor ? _self.editor : editor // ignore: cast_nullable_to_non_nullable
as List<Contributor>?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double?,numberOfPages: freezed == numberOfPages ? _self.numberOfPages : numberOfPages // ignore: cast_nullable_to_non_nullable
as int?,readingProgression: null == readingProgression ? _self.readingProgression : readingProgression // ignore: cast_nullable_to_non_nullable
as ReadingProgression,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as List<String>?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as List<Subject>?,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,belongsTo: freezed == belongsTo ? _self.belongsTo : belongsTo // ignore: cast_nullable_to_non_nullable
as BelongsTo?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,modified: freezed == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as DateTime?,published: freezed == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as DateTime?,sortAs: freezed == sortAs ? _self.sortAs : sortAs // ignore: cast_nullable_to_non_nullable
as String?,presentation: freezed == presentation ? _self.presentation : presentation // ignore: cast_nullable_to_non_nullable
as Presentation?,
  ));
}

/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BelongsToCopyWith<$Res>? get belongsTo {
    if (_self.belongsTo == null) {
    return null;
  }

  return $BelongsToCopyWith<$Res>(_self.belongsTo!, (value) {
    return _then(_self.copyWith(belongsTo: value));
  });
}/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PresentationCopyWith<$Res>? get presentation {
    if (_self.presentation == null) {
    return null;
  }

  return $PresentationCopyWith<$Res>(_self.presentation!, (value) {
    return _then(_self.copyWith(presentation: value));
  });
}
}

// dart format on
