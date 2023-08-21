import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final firestoreHelperProvider = Provider<FirestoreHelper>(
  (ref) => const FirestoreHelper(),
);

class FirestoreHelper {
  const FirestoreHelper();

  Stream<List<T?>> queryStream<T>(
    QueryReference<T, FirestoreQuerySnapshot<T, FirestoreDocumentSnapshot<T>>>
        queryReference,
  ) =>
      queryReference
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) => doc.data).toList());

  Future<List<T?>> query<T>(
    QueryReference<T, FirestoreQuerySnapshot<T, FirestoreDocumentSnapshot<T>>>
        queryReference,
  ) async {
    final snapshot = await queryReference.get();
    return snapshot.docs.map((doc) => doc.data).toList();
  }

  Stream<T?> documentStream<T>(
    FirestoreDocumentReference<T, FirestoreDocumentSnapshot<T>>
        documentReference,
  ) =>
      documentReference.snapshots().map((snapshot) => snapshot.data);

  Future<T?> document<T>(
    FirestoreDocumentReference<T, FirestoreDocumentSnapshot<T>>
        documentReference,
  ) async {
    final snapshot = await documentReference.get();
    return snapshot.data;
  }
}
