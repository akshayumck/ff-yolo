import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'movies_struct.g.dart';

abstract class MoviesStruct
    implements Built<MoviesStruct, MoviesStructBuilder> {
  static Serializer<MoviesStruct> get serializer => _$moviesStructSerializer;

  String? get name;

  String? get genre;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(MoviesStructBuilder builder) => builder
    ..name = ''
    ..genre = ''
    ..firestoreUtilData = FirestoreUtilData();

  MoviesStruct._();
  factory MoviesStruct([void Function(MoviesStructBuilder) updates]) =
      _$MoviesStruct;
}

MoviesStruct createMoviesStruct({
  String? name,
  String? genre,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MoviesStruct(
      (m) => m
        ..name = name
        ..genre = genre
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

MoviesStruct? updateMoviesStruct(
  MoviesStruct? movies, {
  bool clearUnsetFields = true,
}) =>
    movies != null
        ? (movies.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addMoviesStructData(
  Map<String, dynamic> firestoreData,
  MoviesStruct? movies,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (movies == null) {
    return;
  }
  if (movies.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && movies.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final moviesData = getMoviesFirestoreData(movies, forFieldValue);
  final nestedData = moviesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = movies.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getMoviesFirestoreData(
  MoviesStruct? movies, [
  bool forFieldValue = false,
]) {
  if (movies == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(MoviesStruct.serializer, movies);

  // Add any Firestore field values
  movies.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMoviesListFirestoreData(
  List<MoviesStruct>? moviess,
) =>
    moviess?.map((m) => getMoviesFirestoreData(m, true)).toList() ?? [];
