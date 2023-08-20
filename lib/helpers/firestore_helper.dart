import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final firestoreHelperProvider = Provider<FirestoreHelper>(
  (ref) => const FirestoreHelper(),
);

class FirestoreHelper {
  const FirestoreHelper();

  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  Future<void> addData(String collection, Map<String, dynamic> data) async {
    try {
      await _firestore.collection(collection).add(data);
    } on Exception catch (e) {
      print(e);
    }
  }

  Future<DocumentSnapshot?> getData(
    String collection,
    String documentId,
  ) async {
    try {
      return await _firestore.collection(collection).doc(documentId).get();
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> updateData(
    String collection,
    String documentId,
    Map<String, dynamic> data,
  ) async {
    try {
      await _firestore.collection(collection).doc(documentId).update(data);
    } on Exception catch (e) {
      print(e);
    }
  }

  Future<void> deleteData(String collection, String documentId) async {
    try {
      await _firestore.collection(collection).doc(documentId).delete();
    } on Exception catch (e) {
      print(e);
    }
  }

  // データの変更を監視する Stream を返す
  Stream<QuerySnapshot> streamData(String collection) =>
      _firestore.collection(collection).snapshots();
}
