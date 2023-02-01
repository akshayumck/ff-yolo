// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MoviesRecord> _$moviesRecordSerializer =
    new _$MoviesRecordSerializer();

class _$MoviesRecordSerializer implements StructuredSerializer<MoviesRecord> {
  @override
  final Iterable<Type> types = const [MoviesRecord, _$MoviesRecord];
  @override
  final String wireName = 'MoviesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MoviesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MoviesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoviesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MoviesRecord extends MoviesRecord {
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MoviesRecord([void Function(MoviesRecordBuilder)? updates]) =>
      (new MoviesRecordBuilder()..update(updates))._build();

  _$MoviesRecord._({this.ffRef}) : super._();

  @override
  MoviesRecord rebuild(void Function(MoviesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoviesRecordBuilder toBuilder() => new MoviesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoviesRecord && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(0, ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MoviesRecord')..add('ffRef', ffRef))
        .toString();
  }
}

class MoviesRecordBuilder
    implements Builder<MoviesRecord, MoviesRecordBuilder> {
  _$MoviesRecord? _$v;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MoviesRecordBuilder() {
    MoviesRecord._initializeBuilder(this);
  }

  MoviesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoviesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MoviesRecord;
  }

  @override
  void update(void Function(MoviesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MoviesRecord build() => _build();

  _$MoviesRecord _build() {
    final _$result = _$v ?? new _$MoviesRecord._(ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
