import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

// See: https://github.com/firebase/flutterfire/blob/master/packages/cloud_firestore_odm/doc/defining-models.md
// ignore: constant_identifier_names
const FirestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  explicitToJson: true,
  createFieldMap: true,
);
