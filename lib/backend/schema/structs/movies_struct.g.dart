// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MoviesStruct> _$moviesStructSerializer =
    new _$MoviesStructSerializer();

class _$MoviesStructSerializer implements StructuredSerializer<MoviesStruct> {
  @override
  final Iterable<Type> types = const [MoviesStruct, _$MoviesStruct];
  @override
  final String wireName = 'MoviesStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, MoviesStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genre;
    if (value != null) {
      result
        ..add('genre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MoviesStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoviesStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$MoviesStruct extends MoviesStruct {
  @override
  final String? name;
  @override
  final String? genre;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$MoviesStruct([void Function(MoviesStructBuilder)? updates]) =>
      (new MoviesStructBuilder()..update(updates))._build();

  _$MoviesStruct._({this.name, this.genre, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'MoviesStruct', 'firestoreUtilData');
  }

  @override
  MoviesStruct rebuild(void Function(MoviesStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoviesStructBuilder toBuilder() => new MoviesStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoviesStruct &&
        name == other.name &&
        genre == other.genre &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), genre.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MoviesStruct')
          ..add('name', name)
          ..add('genre', genre)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class MoviesStructBuilder
    implements Builder<MoviesStruct, MoviesStructBuilder> {
  _$MoviesStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _genre;
  String? get genre => _$this._genre;
  set genre(String? genre) => _$this._genre = genre;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  MoviesStructBuilder() {
    MoviesStruct._initializeBuilder(this);
  }

  MoviesStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _genre = $v.genre;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoviesStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MoviesStruct;
  }

  @override
  void update(void Function(MoviesStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MoviesStruct build() => _build();

  _$MoviesStruct _build() {
    final _$result = _$v ??
        new _$MoviesStruct._(
            name: name,
            genre: genre,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'MoviesStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
