import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'movies_record.g.dart';

abstract class MoviesRecord
    implements Built<MoviesRecord, MoviesRecordBuilder> {
  static Serializer<MoviesRecord> get serializer => _$moviesRecordSerializer;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MoviesRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('movies');

  static Stream<MoviesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MoviesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MoviesRecord._();
  factory MoviesRecord([void Function(MoviesRecordBuilder) updates]) =
      _$MoviesRecord;

  static MoviesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMoviesRecordData() {
  final firestoreData = serializers.toFirestore(
    MoviesRecord.serializer,
    MoviesRecord(
      (m) => m,
    ),
  );

  return firestoreData;
}
