// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_collection.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UserCollectionReference
    implements
        UserQuery,
        FirestoreCollectionReference<User, UserQuerySnapshot> {
  factory UserCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UserCollectionReference;

  static User fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$UserFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    User value,
    SetOptions? options,
  ) {
    return _$UserToJson(value);
  }

  @override
  CollectionReference<User> get reference;

  @override
  UserDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserDocumentReference> add(User value);
}

class _$UserCollectionReference extends _$UserQuery
    implements UserCollectionReference {
  factory _$UserCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserCollectionReference._(
      firestore.collection('users_v1').withConverter(
            fromFirestore: UserCollectionReference.fromFirestore,
            toFirestore: UserCollectionReference.toFirestore,
          ),
    );
  }

  _$UserCollectionReference._(
    CollectionReference<User> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<User> get reference =>
      super.reference as CollectionReference<User>;

  @override
  UserDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UserDocumentReference> add(User value) {
    return reference.add(value).then((ref) => UserDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserDocumentReference
    extends FirestoreDocumentReference<User, UserDocumentSnapshot> {
  factory UserDocumentReference(DocumentReference<User> reference) =
      _$UserDocumentReference;

  DocumentReference<User> get reference;

  /// A reference to the [UserCollectionReference] containing this document.
  UserCollectionReference get parent {
    return _$UserCollectionReference(reference.firestore);
  }

  late final SlackUserCollectionReference slackUsersV1 =
      _$SlackUserCollectionReference(
    reference,
  );

  late final MessageCollectionReference messagesV1 =
      _$MessageCollectionReference(
    reference,
  );

  late final SenderCollectionReference sendersV1 = _$SenderCollectionReference(
    reference,
  );

  @override
  Stream<UserDocumentSnapshot> snapshots();

  @override
  Future<UserDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String id,
    FieldValue idFieldValue,
    String? email,
    FieldValue emailFieldValue,
    Timestamp createdAt,
    FieldValue createdAtFieldValue,
    Timestamp lastUpdatedAt,
    FieldValue lastUpdatedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String id,
    FieldValue idFieldValue,
    String? email,
    FieldValue emailFieldValue,
    Timestamp createdAt,
    FieldValue createdAtFieldValue,
    Timestamp lastUpdatedAt,
    FieldValue lastUpdatedAtFieldValue,
  });
}

class _$UserDocumentReference
    extends FirestoreDocumentReference<User, UserDocumentSnapshot>
    implements UserDocumentReference {
  _$UserDocumentReference(this.reference);

  @override
  final DocumentReference<User> reference;

  /// A reference to the [UserCollectionReference] containing this document.
  UserCollectionReference get parent {
    return _$UserCollectionReference(reference.firestore);
  }

  late final SlackUserCollectionReference slackUsersV1 =
      _$SlackUserCollectionReference(
    reference,
  );

  late final MessageCollectionReference messagesV1 =
      _$MessageCollectionReference(
    reference,
  );

  late final SenderCollectionReference sendersV1 = _$SenderCollectionReference(
    reference,
  );

  @override
  Stream<UserDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserDocumentSnapshot._);
  }

  @override
  Future<UserDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserDocumentSnapshot._);
  }

  @override
  Future<UserDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserDocumentSnapshot._);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? lastUpdatedAt = _sentinel,
    FieldValue? lastUpdatedAtFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      lastUpdatedAt == _sentinel || lastUpdatedAtFieldValue == null,
      "Cannot specify both lastUpdatedAt and lastUpdatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel) _$UserFieldMap['id']!: id as String,
      if (idFieldValue != null) _$UserFieldMap['id']!: idFieldValue,
      if (email != _sentinel) _$UserFieldMap['email']!: email as String?,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
      if (createdAt != _sentinel)
        _$UserFieldMap['createdAt']!: createdAt as Timestamp,
      if (createdAtFieldValue != null)
        _$UserFieldMap['createdAt']!: createdAtFieldValue,
      if (lastUpdatedAt != _sentinel)
        _$UserFieldMap['lastUpdatedAt']!: lastUpdatedAt as Timestamp,
      if (lastUpdatedAtFieldValue != null)
        _$UserFieldMap['lastUpdatedAt']!: lastUpdatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? lastUpdatedAt = _sentinel,
    FieldValue? lastUpdatedAtFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      lastUpdatedAt == _sentinel || lastUpdatedAtFieldValue == null,
      "Cannot specify both lastUpdatedAt and lastUpdatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel) _$UserFieldMap['id']!: id as String,
      if (idFieldValue != null) _$UserFieldMap['id']!: idFieldValue,
      if (email != _sentinel) _$UserFieldMap['email']!: email as String?,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
      if (createdAt != _sentinel)
        _$UserFieldMap['createdAt']!: createdAt as Timestamp,
      if (createdAtFieldValue != null)
        _$UserFieldMap['createdAt']!: createdAtFieldValue,
      if (lastUpdatedAt != _sentinel)
        _$UserFieldMap['lastUpdatedAt']!: lastUpdatedAt as Timestamp,
      if (lastUpdatedAtFieldValue != null)
        _$UserFieldMap['lastUpdatedAt']!: lastUpdatedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserQuery implements QueryReference<User, UserQuerySnapshot> {
  @override
  UserQuery limit(int limit);

  @override
  UserQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UserQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UserQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  UserQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  UserQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  UserQuery whereCreatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });
  UserQuery whereLastUpdatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });

  UserQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByEmail({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByCreatedAt({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByLastUpdatedAt({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });
}

class _$UserQuery extends QueryReference<User, UserQuerySnapshot>
    implements UserQuery {
  _$UserQuery(
    this._collection, {
    required Query<User> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(UserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UserQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserQuery limit(int limit) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery limitToLast(int limit) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  UserQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['id']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserQuery whereEmail({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['email']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserQuery whereCreatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['createdAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserQuery whereLastUpdatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['lastUpdatedAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  UserQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['id']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['email']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['createdAt']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  UserQuery orderByLastUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserFieldMap['lastUpdatedAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserDocumentSnapshot extends FirestoreDocumentSnapshot<User> {
  UserDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<User> snapshot;

  @override
  UserDocumentReference get reference {
    return UserDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final User? data;
}

class UserQuerySnapshot
    extends FirestoreQuerySnapshot<User, UserQueryDocumentSnapshot> {
  UserQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UserQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<User> snapshot,
  ) {
    final docs = snapshot.docs.map(UserQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UserDocumentSnapshot._,
      );
    }).toList();

    return UserQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UserDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<User> snapshot;

  @override
  final List<UserQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserDocumentSnapshot>> docChanges;
}

class UserQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<User>
    implements UserDocumentSnapshot {
  UserQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<User> snapshot;

  @override
  final User data;

  @override
  UserDocumentReference get reference {
    return UserDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class SlackUserCollectionReference
    implements
        SlackUserQuery,
        FirestoreCollectionReference<SlackUser, SlackUserQuerySnapshot> {
  factory SlackUserCollectionReference(
    DocumentReference<User> parent,
  ) = _$SlackUserCollectionReference;

  static SlackUser fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$SlackUserFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    SlackUser value,
    SetOptions? options,
  ) {
    return _$SlackUserToJson(value);
  }

  @override
  CollectionReference<SlackUser> get reference;

  /// A reference to the containing [UserDocumentReference] if this is a subcollection.
  UserDocumentReference get parent;

  @override
  SlackUserDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SlackUserDocumentReference> add(SlackUser value);
}

class _$SlackUserCollectionReference extends _$SlackUserQuery
    implements SlackUserCollectionReference {
  factory _$SlackUserCollectionReference(
    DocumentReference<User> parent,
  ) {
    return _$SlackUserCollectionReference._(
      UserDocumentReference(parent),
      parent.collection('slack_users_v1').withConverter(
            fromFirestore: SlackUserCollectionReference.fromFirestore,
            toFirestore: SlackUserCollectionReference.toFirestore,
          ),
    );
  }

  _$SlackUserCollectionReference._(
    this.parent,
    CollectionReference<SlackUser> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<SlackUser> get reference =>
      super.reference as CollectionReference<SlackUser>;

  @override
  SlackUserDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SlackUserDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SlackUserDocumentReference> add(SlackUser value) {
    return reference.add(value).then((ref) => SlackUserDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SlackUserCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SlackUserDocumentReference
    extends FirestoreDocumentReference<SlackUser, SlackUserDocumentSnapshot> {
  factory SlackUserDocumentReference(DocumentReference<SlackUser> reference) =
      _$SlackUserDocumentReference;

  DocumentReference<SlackUser> get reference;

  /// A reference to the [SlackUserCollectionReference] containing this document.
  SlackUserCollectionReference get parent {
    return _$SlackUserCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<SlackUserDocumentSnapshot> snapshots();

  @override
  Future<SlackUserDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String id,
    FieldValue idFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String slackTeamId,
    FieldValue slackTeamIdFieldValue,
    String? slackTeamAvatarBaseUrl,
    FieldValue slackTeamAvatarBaseUrlFieldValue,
    String? slackTeamDiscoverable,
    FieldValue slackTeamDiscoverableFieldValue,
    String slackTeamDomain,
    FieldValue slackTeamDomainFieldValue,
    String? slackTeamIconUrl,
    FieldValue slackTeamIconUrlFieldValue,
    String slackTeamName,
    FieldValue slackTeamNameFieldValue,
    String language,
    FieldValue languageFieldValue,
    Timestamp createdAt,
    FieldValue createdAtFieldValue,
    Timestamp lastUpdatedAt,
    FieldValue lastUpdatedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String id,
    FieldValue idFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String slackTeamId,
    FieldValue slackTeamIdFieldValue,
    String? slackTeamAvatarBaseUrl,
    FieldValue slackTeamAvatarBaseUrlFieldValue,
    String? slackTeamDiscoverable,
    FieldValue slackTeamDiscoverableFieldValue,
    String slackTeamDomain,
    FieldValue slackTeamDomainFieldValue,
    String? slackTeamIconUrl,
    FieldValue slackTeamIconUrlFieldValue,
    String slackTeamName,
    FieldValue slackTeamNameFieldValue,
    String language,
    FieldValue languageFieldValue,
    Timestamp createdAt,
    FieldValue createdAtFieldValue,
    Timestamp lastUpdatedAt,
    FieldValue lastUpdatedAtFieldValue,
  });
}

class _$SlackUserDocumentReference
    extends FirestoreDocumentReference<SlackUser, SlackUserDocumentSnapshot>
    implements SlackUserDocumentReference {
  _$SlackUserDocumentReference(this.reference);

  @override
  final DocumentReference<SlackUser> reference;

  /// A reference to the [SlackUserCollectionReference] containing this document.
  SlackUserCollectionReference get parent {
    return _$SlackUserCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<SlackUserDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SlackUserDocumentSnapshot._);
  }

  @override
  Future<SlackUserDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SlackUserDocumentSnapshot._);
  }

  @override
  Future<SlackUserDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(SlackUserDocumentSnapshot._);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? slackTeamId = _sentinel,
    FieldValue? slackTeamIdFieldValue,
    Object? slackTeamAvatarBaseUrl = _sentinel,
    FieldValue? slackTeamAvatarBaseUrlFieldValue,
    Object? slackTeamDiscoverable = _sentinel,
    FieldValue? slackTeamDiscoverableFieldValue,
    Object? slackTeamDomain = _sentinel,
    FieldValue? slackTeamDomainFieldValue,
    Object? slackTeamIconUrl = _sentinel,
    FieldValue? slackTeamIconUrlFieldValue,
    Object? slackTeamName = _sentinel,
    FieldValue? slackTeamNameFieldValue,
    Object? language = _sentinel,
    FieldValue? languageFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? lastUpdatedAt = _sentinel,
    FieldValue? lastUpdatedAtFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      slackTeamId == _sentinel || slackTeamIdFieldValue == null,
      "Cannot specify both slackTeamId and slackTeamIdFieldValue",
    );
    assert(
      slackTeamAvatarBaseUrl == _sentinel ||
          slackTeamAvatarBaseUrlFieldValue == null,
      "Cannot specify both slackTeamAvatarBaseUrl and slackTeamAvatarBaseUrlFieldValue",
    );
    assert(
      slackTeamDiscoverable == _sentinel ||
          slackTeamDiscoverableFieldValue == null,
      "Cannot specify both slackTeamDiscoverable and slackTeamDiscoverableFieldValue",
    );
    assert(
      slackTeamDomain == _sentinel || slackTeamDomainFieldValue == null,
      "Cannot specify both slackTeamDomain and slackTeamDomainFieldValue",
    );
    assert(
      slackTeamIconUrl == _sentinel || slackTeamIconUrlFieldValue == null,
      "Cannot specify both slackTeamIconUrl and slackTeamIconUrlFieldValue",
    );
    assert(
      slackTeamName == _sentinel || slackTeamNameFieldValue == null,
      "Cannot specify both slackTeamName and slackTeamNameFieldValue",
    );
    assert(
      language == _sentinel || languageFieldValue == null,
      "Cannot specify both language and languageFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      lastUpdatedAt == _sentinel || lastUpdatedAtFieldValue == null,
      "Cannot specify both lastUpdatedAt and lastUpdatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel) _$SlackUserFieldMap['id']!: id as String,
      if (idFieldValue != null) _$SlackUserFieldMap['id']!: idFieldValue,
      if (userId != _sentinel) _$SlackUserFieldMap['userId']!: userId as String,
      if (userIdFieldValue != null)
        _$SlackUserFieldMap['userId']!: userIdFieldValue,
      if (slackTeamId != _sentinel)
        _$SlackUserFieldMap['slackTeamId']!: slackTeamId as String,
      if (slackTeamIdFieldValue != null)
        _$SlackUserFieldMap['slackTeamId']!: slackTeamIdFieldValue,
      if (slackTeamAvatarBaseUrl != _sentinel)
        _$SlackUserFieldMap['slackTeamAvatarBaseUrl']!:
            slackTeamAvatarBaseUrl as String?,
      if (slackTeamAvatarBaseUrlFieldValue != null)
        _$SlackUserFieldMap['slackTeamAvatarBaseUrl']!:
            slackTeamAvatarBaseUrlFieldValue,
      if (slackTeamDiscoverable != _sentinel)
        _$SlackUserFieldMap['slackTeamDiscoverable']!:
            slackTeamDiscoverable as String?,
      if (slackTeamDiscoverableFieldValue != null)
        _$SlackUserFieldMap['slackTeamDiscoverable']!:
            slackTeamDiscoverableFieldValue,
      if (slackTeamDomain != _sentinel)
        _$SlackUserFieldMap['slackTeamDomain']!: slackTeamDomain as String,
      if (slackTeamDomainFieldValue != null)
        _$SlackUserFieldMap['slackTeamDomain']!: slackTeamDomainFieldValue,
      if (slackTeamIconUrl != _sentinel)
        _$SlackUserFieldMap['slackTeamIconUrl']!: slackTeamIconUrl as String?,
      if (slackTeamIconUrlFieldValue != null)
        _$SlackUserFieldMap['slackTeamIconUrl']!: slackTeamIconUrlFieldValue,
      if (slackTeamName != _sentinel)
        _$SlackUserFieldMap['slackTeamName']!: slackTeamName as String,
      if (slackTeamNameFieldValue != null)
        _$SlackUserFieldMap['slackTeamName']!: slackTeamNameFieldValue,
      if (language != _sentinel)
        _$SlackUserFieldMap['language']!: language as String,
      if (languageFieldValue != null)
        _$SlackUserFieldMap['language']!: languageFieldValue,
      if (createdAt != _sentinel)
        _$SlackUserFieldMap['createdAt']!: createdAt as Timestamp,
      if (createdAtFieldValue != null)
        _$SlackUserFieldMap['createdAt']!: createdAtFieldValue,
      if (lastUpdatedAt != _sentinel)
        _$SlackUserFieldMap['lastUpdatedAt']!: lastUpdatedAt as Timestamp,
      if (lastUpdatedAtFieldValue != null)
        _$SlackUserFieldMap['lastUpdatedAt']!: lastUpdatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? slackTeamId = _sentinel,
    FieldValue? slackTeamIdFieldValue,
    Object? slackTeamAvatarBaseUrl = _sentinel,
    FieldValue? slackTeamAvatarBaseUrlFieldValue,
    Object? slackTeamDiscoverable = _sentinel,
    FieldValue? slackTeamDiscoverableFieldValue,
    Object? slackTeamDomain = _sentinel,
    FieldValue? slackTeamDomainFieldValue,
    Object? slackTeamIconUrl = _sentinel,
    FieldValue? slackTeamIconUrlFieldValue,
    Object? slackTeamName = _sentinel,
    FieldValue? slackTeamNameFieldValue,
    Object? language = _sentinel,
    FieldValue? languageFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? lastUpdatedAt = _sentinel,
    FieldValue? lastUpdatedAtFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      slackTeamId == _sentinel || slackTeamIdFieldValue == null,
      "Cannot specify both slackTeamId and slackTeamIdFieldValue",
    );
    assert(
      slackTeamAvatarBaseUrl == _sentinel ||
          slackTeamAvatarBaseUrlFieldValue == null,
      "Cannot specify both slackTeamAvatarBaseUrl and slackTeamAvatarBaseUrlFieldValue",
    );
    assert(
      slackTeamDiscoverable == _sentinel ||
          slackTeamDiscoverableFieldValue == null,
      "Cannot specify both slackTeamDiscoverable and slackTeamDiscoverableFieldValue",
    );
    assert(
      slackTeamDomain == _sentinel || slackTeamDomainFieldValue == null,
      "Cannot specify both slackTeamDomain and slackTeamDomainFieldValue",
    );
    assert(
      slackTeamIconUrl == _sentinel || slackTeamIconUrlFieldValue == null,
      "Cannot specify both slackTeamIconUrl and slackTeamIconUrlFieldValue",
    );
    assert(
      slackTeamName == _sentinel || slackTeamNameFieldValue == null,
      "Cannot specify both slackTeamName and slackTeamNameFieldValue",
    );
    assert(
      language == _sentinel || languageFieldValue == null,
      "Cannot specify both language and languageFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      lastUpdatedAt == _sentinel || lastUpdatedAtFieldValue == null,
      "Cannot specify both lastUpdatedAt and lastUpdatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel) _$SlackUserFieldMap['id']!: id as String,
      if (idFieldValue != null) _$SlackUserFieldMap['id']!: idFieldValue,
      if (userId != _sentinel) _$SlackUserFieldMap['userId']!: userId as String,
      if (userIdFieldValue != null)
        _$SlackUserFieldMap['userId']!: userIdFieldValue,
      if (slackTeamId != _sentinel)
        _$SlackUserFieldMap['slackTeamId']!: slackTeamId as String,
      if (slackTeamIdFieldValue != null)
        _$SlackUserFieldMap['slackTeamId']!: slackTeamIdFieldValue,
      if (slackTeamAvatarBaseUrl != _sentinel)
        _$SlackUserFieldMap['slackTeamAvatarBaseUrl']!:
            slackTeamAvatarBaseUrl as String?,
      if (slackTeamAvatarBaseUrlFieldValue != null)
        _$SlackUserFieldMap['slackTeamAvatarBaseUrl']!:
            slackTeamAvatarBaseUrlFieldValue,
      if (slackTeamDiscoverable != _sentinel)
        _$SlackUserFieldMap['slackTeamDiscoverable']!:
            slackTeamDiscoverable as String?,
      if (slackTeamDiscoverableFieldValue != null)
        _$SlackUserFieldMap['slackTeamDiscoverable']!:
            slackTeamDiscoverableFieldValue,
      if (slackTeamDomain != _sentinel)
        _$SlackUserFieldMap['slackTeamDomain']!: slackTeamDomain as String,
      if (slackTeamDomainFieldValue != null)
        _$SlackUserFieldMap['slackTeamDomain']!: slackTeamDomainFieldValue,
      if (slackTeamIconUrl != _sentinel)
        _$SlackUserFieldMap['slackTeamIconUrl']!: slackTeamIconUrl as String?,
      if (slackTeamIconUrlFieldValue != null)
        _$SlackUserFieldMap['slackTeamIconUrl']!: slackTeamIconUrlFieldValue,
      if (slackTeamName != _sentinel)
        _$SlackUserFieldMap['slackTeamName']!: slackTeamName as String,
      if (slackTeamNameFieldValue != null)
        _$SlackUserFieldMap['slackTeamName']!: slackTeamNameFieldValue,
      if (language != _sentinel)
        _$SlackUserFieldMap['language']!: language as String,
      if (languageFieldValue != null)
        _$SlackUserFieldMap['language']!: languageFieldValue,
      if (createdAt != _sentinel)
        _$SlackUserFieldMap['createdAt']!: createdAt as Timestamp,
      if (createdAtFieldValue != null)
        _$SlackUserFieldMap['createdAt']!: createdAtFieldValue,
      if (lastUpdatedAt != _sentinel)
        _$SlackUserFieldMap['lastUpdatedAt']!: lastUpdatedAt as Timestamp,
      if (lastUpdatedAtFieldValue != null)
        _$SlackUserFieldMap['lastUpdatedAt']!: lastUpdatedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SlackUserDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SlackUserQuery
    implements QueryReference<SlackUser, SlackUserQuerySnapshot> {
  @override
  SlackUserQuery limit(int limit);

  @override
  SlackUserQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  SlackUserQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  SlackUserQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  SlackUserQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackUserQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackUserQuery whereUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackUserQuery whereSlackTeamId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackUserQuery whereSlackTeamAvatarBaseUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  SlackUserQuery whereSlackTeamDiscoverable({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  SlackUserQuery whereSlackTeamDomain({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackUserQuery whereSlackTeamIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  SlackUserQuery whereSlackTeamName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackUserQuery whereLanguage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackUserQuery whereCreatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });
  SlackUserQuery whereLastUpdatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });

  SlackUserQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });

  SlackUserQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });

  SlackUserQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });

  SlackUserQuery orderBySlackTeamId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });

  SlackUserQuery orderBySlackTeamAvatarBaseUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });

  SlackUserQuery orderBySlackTeamDiscoverable({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });

  SlackUserQuery orderBySlackTeamDomain({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });

  SlackUserQuery orderBySlackTeamIconUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });

  SlackUserQuery orderBySlackTeamName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });

  SlackUserQuery orderByLanguage({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });

  SlackUserQuery orderByCreatedAt({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });

  SlackUserQuery orderByLastUpdatedAt({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  });
}

class _$SlackUserQuery extends QueryReference<SlackUser, SlackUserQuerySnapshot>
    implements SlackUserQuery {
  _$SlackUserQuery(
    this._collection, {
    required Query<SlackUser> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SlackUserQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(SlackUserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SlackUserQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(SlackUserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SlackUserQuery limit(int limit) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SlackUserQuery limitToLast(int limit) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackUserQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackUserFieldMap['id']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery whereUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackUserFieldMap['userId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery whereSlackTeamId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackUserFieldMap['slackTeamId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery whereSlackTeamAvatarBaseUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackUserFieldMap['slackTeamAvatarBaseUrl']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery whereSlackTeamDiscoverable({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackUserFieldMap['slackTeamDiscoverable']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery whereSlackTeamDomain({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackUserFieldMap['slackTeamDomain']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery whereSlackTeamIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackUserFieldMap['slackTeamIconUrl']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery whereSlackTeamName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackUserFieldMap['slackTeamName']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery whereLanguage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackUserFieldMap['language']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery whereCreatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackUserFieldMap['createdAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery whereLastUpdatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackUserFieldMap['lastUpdatedAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackUserQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackUserQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SlackUserFieldMap['id']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackUserQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackUserFieldMap['userId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackUserQuery orderBySlackTeamId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackUserFieldMap['slackTeamId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackUserQuery orderBySlackTeamAvatarBaseUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackUserFieldMap['slackTeamAvatarBaseUrl']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackUserQuery orderBySlackTeamDiscoverable({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackUserFieldMap['slackTeamDiscoverable']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackUserQuery orderBySlackTeamDomain({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackUserFieldMap['slackTeamDomain']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackUserQuery orderBySlackTeamIconUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackUserFieldMap['slackTeamIconUrl']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackUserQuery orderBySlackTeamName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackUserFieldMap['slackTeamName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackUserQuery orderByLanguage({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackUserFieldMap['language']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackUserQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackUserFieldMap['createdAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackUserQuery orderByLastUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackUserDocumentSnapshot? startAtDocument,
    SlackUserDocumentSnapshot? endAtDocument,
    SlackUserDocumentSnapshot? endBeforeDocument,
    SlackUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackUserFieldMap['lastUpdatedAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SlackUserQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SlackUserDocumentSnapshot extends FirestoreDocumentSnapshot<SlackUser> {
  SlackUserDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<SlackUser> snapshot;

  @override
  SlackUserDocumentReference get reference {
    return SlackUserDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final SlackUser? data;
}

class SlackUserQuerySnapshot
    extends FirestoreQuerySnapshot<SlackUser, SlackUserQueryDocumentSnapshot> {
  SlackUserQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SlackUserQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<SlackUser> snapshot,
  ) {
    final docs = snapshot.docs.map(SlackUserQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SlackUserDocumentSnapshot._,
      );
    }).toList();

    return SlackUserQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SlackUserDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SlackUserDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<SlackUserDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<SlackUser> snapshot;

  @override
  final List<SlackUserQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SlackUserDocumentSnapshot>> docChanges;
}

class SlackUserQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<SlackUser>
    implements SlackUserDocumentSnapshot {
  SlackUserQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<SlackUser> snapshot;

  @override
  final SlackUser data;

  @override
  SlackUserDocumentReference get reference {
    return SlackUserDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class MessageCollectionReference
    implements
        MessageQuery,
        FirestoreCollectionReference<Message, MessageQuerySnapshot> {
  factory MessageCollectionReference(
    DocumentReference<User> parent,
  ) = _$MessageCollectionReference;

  static Message fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$MessageFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Message value,
    SetOptions? options,
  ) {
    return _$MessageToJson(value);
  }

  @override
  CollectionReference<Message> get reference;

  /// A reference to the containing [UserDocumentReference] if this is a subcollection.
  UserDocumentReference get parent;

  @override
  MessageDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<MessageDocumentReference> add(Message value);
}

class _$MessageCollectionReference extends _$MessageQuery
    implements MessageCollectionReference {
  factory _$MessageCollectionReference(
    DocumentReference<User> parent,
  ) {
    return _$MessageCollectionReference._(
      UserDocumentReference(parent),
      parent.collection('messages_v1').withConverter(
            fromFirestore: MessageCollectionReference.fromFirestore,
            toFirestore: MessageCollectionReference.toFirestore,
          ),
    );
  }

  _$MessageCollectionReference._(
    this.parent,
    CollectionReference<Message> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Message> get reference =>
      super.reference as CollectionReference<Message>;

  @override
  MessageDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return MessageDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<MessageDocumentReference> add(Message value) {
    return reference.add(value).then((ref) => MessageDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$MessageCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class MessageDocumentReference
    extends FirestoreDocumentReference<Message, MessageDocumentSnapshot> {
  factory MessageDocumentReference(DocumentReference<Message> reference) =
      _$MessageDocumentReference;

  DocumentReference<Message> get reference;

  /// A reference to the [MessageCollectionReference] containing this document.
  MessageCollectionReference get parent {
    return _$MessageCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  late final SlackMessageCollectionReference slackMessagesV1 =
      _$SlackMessageCollectionReference(
    reference,
  );

  @override
  Stream<MessageDocumentSnapshot> snapshots();

  @override
  Future<MessageDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String id,
    FieldValue idFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String type,
    FieldValue typeFieldValue,
    String message,
    FieldValue messageFieldValue,
    String summary,
    FieldValue summaryFieldValue,
    String botMessage,
    FieldValue botMessageFieldValue,
    String reply,
    FieldValue replyFieldValue,
    String senderId,
    FieldValue senderIdFieldValue,
    String senderName,
    FieldValue senderNameFieldValue,
    String? senderIconUrl,
    FieldValue senderIconUrlFieldValue,
    List<String> imageUrls,
    FieldValue imageUrlsFieldValue,
    bool fileAttached,
    FieldValue fileAttachedFieldValue,
    bool replied,
    FieldValue repliedFieldValue,
    bool archived,
    FieldValue archivedFieldValue,
    bool read,
    FieldValue readFieldValue,
    String positiveReply,
    FieldValue positiveReplyFieldValue,
    String negativeReply,
    FieldValue negativeReplyFieldValue,
    bool isScheduleAdjustment,
    FieldValue isScheduleAdjustmentFieldValue,
    Timestamp createdAt,
    FieldValue createdAtFieldValue,
    Timestamp lastUpdatedAt,
    FieldValue lastUpdatedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String id,
    FieldValue idFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String type,
    FieldValue typeFieldValue,
    String message,
    FieldValue messageFieldValue,
    String summary,
    FieldValue summaryFieldValue,
    String botMessage,
    FieldValue botMessageFieldValue,
    String reply,
    FieldValue replyFieldValue,
    String senderId,
    FieldValue senderIdFieldValue,
    String senderName,
    FieldValue senderNameFieldValue,
    String? senderIconUrl,
    FieldValue senderIconUrlFieldValue,
    List<String> imageUrls,
    FieldValue imageUrlsFieldValue,
    bool fileAttached,
    FieldValue fileAttachedFieldValue,
    bool replied,
    FieldValue repliedFieldValue,
    bool archived,
    FieldValue archivedFieldValue,
    bool read,
    FieldValue readFieldValue,
    String positiveReply,
    FieldValue positiveReplyFieldValue,
    String negativeReply,
    FieldValue negativeReplyFieldValue,
    bool isScheduleAdjustment,
    FieldValue isScheduleAdjustmentFieldValue,
    Timestamp createdAt,
    FieldValue createdAtFieldValue,
    Timestamp lastUpdatedAt,
    FieldValue lastUpdatedAtFieldValue,
  });
}

class _$MessageDocumentReference
    extends FirestoreDocumentReference<Message, MessageDocumentSnapshot>
    implements MessageDocumentReference {
  _$MessageDocumentReference(this.reference);

  @override
  final DocumentReference<Message> reference;

  /// A reference to the [MessageCollectionReference] containing this document.
  MessageCollectionReference get parent {
    return _$MessageCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  late final SlackMessageCollectionReference slackMessagesV1 =
      _$SlackMessageCollectionReference(
    reference,
  );

  @override
  Stream<MessageDocumentSnapshot> snapshots() {
    return reference.snapshots().map(MessageDocumentSnapshot._);
  }

  @override
  Future<MessageDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MessageDocumentSnapshot._);
  }

  @override
  Future<MessageDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(MessageDocumentSnapshot._);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? message = _sentinel,
    FieldValue? messageFieldValue,
    Object? summary = _sentinel,
    FieldValue? summaryFieldValue,
    Object? botMessage = _sentinel,
    FieldValue? botMessageFieldValue,
    Object? reply = _sentinel,
    FieldValue? replyFieldValue,
    Object? senderId = _sentinel,
    FieldValue? senderIdFieldValue,
    Object? senderName = _sentinel,
    FieldValue? senderNameFieldValue,
    Object? senderIconUrl = _sentinel,
    FieldValue? senderIconUrlFieldValue,
    Object? imageUrls = _sentinel,
    FieldValue? imageUrlsFieldValue,
    Object? fileAttached = _sentinel,
    FieldValue? fileAttachedFieldValue,
    Object? replied = _sentinel,
    FieldValue? repliedFieldValue,
    Object? archived = _sentinel,
    FieldValue? archivedFieldValue,
    Object? read = _sentinel,
    FieldValue? readFieldValue,
    Object? positiveReply = _sentinel,
    FieldValue? positiveReplyFieldValue,
    Object? negativeReply = _sentinel,
    FieldValue? negativeReplyFieldValue,
    Object? isScheduleAdjustment = _sentinel,
    FieldValue? isScheduleAdjustmentFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? lastUpdatedAt = _sentinel,
    FieldValue? lastUpdatedAtFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      message == _sentinel || messageFieldValue == null,
      "Cannot specify both message and messageFieldValue",
    );
    assert(
      summary == _sentinel || summaryFieldValue == null,
      "Cannot specify both summary and summaryFieldValue",
    );
    assert(
      botMessage == _sentinel || botMessageFieldValue == null,
      "Cannot specify both botMessage and botMessageFieldValue",
    );
    assert(
      reply == _sentinel || replyFieldValue == null,
      "Cannot specify both reply and replyFieldValue",
    );
    assert(
      senderId == _sentinel || senderIdFieldValue == null,
      "Cannot specify both senderId and senderIdFieldValue",
    );
    assert(
      senderName == _sentinel || senderNameFieldValue == null,
      "Cannot specify both senderName and senderNameFieldValue",
    );
    assert(
      senderIconUrl == _sentinel || senderIconUrlFieldValue == null,
      "Cannot specify both senderIconUrl and senderIconUrlFieldValue",
    );
    assert(
      imageUrls == _sentinel || imageUrlsFieldValue == null,
      "Cannot specify both imageUrls and imageUrlsFieldValue",
    );
    assert(
      fileAttached == _sentinel || fileAttachedFieldValue == null,
      "Cannot specify both fileAttached and fileAttachedFieldValue",
    );
    assert(
      replied == _sentinel || repliedFieldValue == null,
      "Cannot specify both replied and repliedFieldValue",
    );
    assert(
      archived == _sentinel || archivedFieldValue == null,
      "Cannot specify both archived and archivedFieldValue",
    );
    assert(
      read == _sentinel || readFieldValue == null,
      "Cannot specify both read and readFieldValue",
    );
    assert(
      positiveReply == _sentinel || positiveReplyFieldValue == null,
      "Cannot specify both positiveReply and positiveReplyFieldValue",
    );
    assert(
      negativeReply == _sentinel || negativeReplyFieldValue == null,
      "Cannot specify both negativeReply and negativeReplyFieldValue",
    );
    assert(
      isScheduleAdjustment == _sentinel ||
          isScheduleAdjustmentFieldValue == null,
      "Cannot specify both isScheduleAdjustment and isScheduleAdjustmentFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      lastUpdatedAt == _sentinel || lastUpdatedAtFieldValue == null,
      "Cannot specify both lastUpdatedAt and lastUpdatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel) _$MessageFieldMap['id']!: id as String,
      if (idFieldValue != null) _$MessageFieldMap['id']!: idFieldValue,
      if (userId != _sentinel) _$MessageFieldMap['userId']!: userId as String,
      if (userIdFieldValue != null)
        _$MessageFieldMap['userId']!: userIdFieldValue,
      if (type != _sentinel) _$MessageFieldMap['type']!: type as String,
      if (typeFieldValue != null) _$MessageFieldMap['type']!: typeFieldValue,
      if (message != _sentinel)
        _$MessageFieldMap['message']!: message as String,
      if (messageFieldValue != null)
        _$MessageFieldMap['message']!: messageFieldValue,
      if (summary != _sentinel)
        _$MessageFieldMap['summary']!: summary as String,
      if (summaryFieldValue != null)
        _$MessageFieldMap['summary']!: summaryFieldValue,
      if (botMessage != _sentinel)
        _$MessageFieldMap['botMessage']!: botMessage as String,
      if (botMessageFieldValue != null)
        _$MessageFieldMap['botMessage']!: botMessageFieldValue,
      if (reply != _sentinel) _$MessageFieldMap['reply']!: reply as String,
      if (replyFieldValue != null) _$MessageFieldMap['reply']!: replyFieldValue,
      if (senderId != _sentinel)
        _$MessageFieldMap['senderId']!: senderId as String,
      if (senderIdFieldValue != null)
        _$MessageFieldMap['senderId']!: senderIdFieldValue,
      if (senderName != _sentinel)
        _$MessageFieldMap['senderName']!: senderName as String,
      if (senderNameFieldValue != null)
        _$MessageFieldMap['senderName']!: senderNameFieldValue,
      if (senderIconUrl != _sentinel)
        _$MessageFieldMap['senderIconUrl']!: senderIconUrl as String?,
      if (senderIconUrlFieldValue != null)
        _$MessageFieldMap['senderIconUrl']!: senderIconUrlFieldValue,
      if (imageUrls != _sentinel)
        _$MessageFieldMap['imageUrls']!: imageUrls as List<String>,
      if (imageUrlsFieldValue != null)
        _$MessageFieldMap['imageUrls']!: imageUrlsFieldValue,
      if (fileAttached != _sentinel)
        _$MessageFieldMap['fileAttached']!: fileAttached as bool,
      if (fileAttachedFieldValue != null)
        _$MessageFieldMap['fileAttached']!: fileAttachedFieldValue,
      if (replied != _sentinel) _$MessageFieldMap['replied']!: replied as bool,
      if (repliedFieldValue != null)
        _$MessageFieldMap['replied']!: repliedFieldValue,
      if (archived != _sentinel)
        _$MessageFieldMap['archived']!: archived as bool,
      if (archivedFieldValue != null)
        _$MessageFieldMap['archived']!: archivedFieldValue,
      if (read != _sentinel) _$MessageFieldMap['read']!: read as bool,
      if (readFieldValue != null) _$MessageFieldMap['read']!: readFieldValue,
      if (positiveReply != _sentinel)
        _$MessageFieldMap['positiveReply']!: positiveReply as String,
      if (positiveReplyFieldValue != null)
        _$MessageFieldMap['positiveReply']!: positiveReplyFieldValue,
      if (negativeReply != _sentinel)
        _$MessageFieldMap['negativeReply']!: negativeReply as String,
      if (negativeReplyFieldValue != null)
        _$MessageFieldMap['negativeReply']!: negativeReplyFieldValue,
      if (isScheduleAdjustment != _sentinel)
        _$MessageFieldMap['isScheduleAdjustment']!:
            isScheduleAdjustment as bool,
      if (isScheduleAdjustmentFieldValue != null)
        _$MessageFieldMap['isScheduleAdjustment']!:
            isScheduleAdjustmentFieldValue,
      if (createdAt != _sentinel)
        _$MessageFieldMap['createdAt']!: createdAt as Timestamp,
      if (createdAtFieldValue != null)
        _$MessageFieldMap['createdAt']!: createdAtFieldValue,
      if (lastUpdatedAt != _sentinel)
        _$MessageFieldMap['lastUpdatedAt']!: lastUpdatedAt as Timestamp,
      if (lastUpdatedAtFieldValue != null)
        _$MessageFieldMap['lastUpdatedAt']!: lastUpdatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? message = _sentinel,
    FieldValue? messageFieldValue,
    Object? summary = _sentinel,
    FieldValue? summaryFieldValue,
    Object? botMessage = _sentinel,
    FieldValue? botMessageFieldValue,
    Object? reply = _sentinel,
    FieldValue? replyFieldValue,
    Object? senderId = _sentinel,
    FieldValue? senderIdFieldValue,
    Object? senderName = _sentinel,
    FieldValue? senderNameFieldValue,
    Object? senderIconUrl = _sentinel,
    FieldValue? senderIconUrlFieldValue,
    Object? imageUrls = _sentinel,
    FieldValue? imageUrlsFieldValue,
    Object? fileAttached = _sentinel,
    FieldValue? fileAttachedFieldValue,
    Object? replied = _sentinel,
    FieldValue? repliedFieldValue,
    Object? archived = _sentinel,
    FieldValue? archivedFieldValue,
    Object? read = _sentinel,
    FieldValue? readFieldValue,
    Object? positiveReply = _sentinel,
    FieldValue? positiveReplyFieldValue,
    Object? negativeReply = _sentinel,
    FieldValue? negativeReplyFieldValue,
    Object? isScheduleAdjustment = _sentinel,
    FieldValue? isScheduleAdjustmentFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? lastUpdatedAt = _sentinel,
    FieldValue? lastUpdatedAtFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      message == _sentinel || messageFieldValue == null,
      "Cannot specify both message and messageFieldValue",
    );
    assert(
      summary == _sentinel || summaryFieldValue == null,
      "Cannot specify both summary and summaryFieldValue",
    );
    assert(
      botMessage == _sentinel || botMessageFieldValue == null,
      "Cannot specify both botMessage and botMessageFieldValue",
    );
    assert(
      reply == _sentinel || replyFieldValue == null,
      "Cannot specify both reply and replyFieldValue",
    );
    assert(
      senderId == _sentinel || senderIdFieldValue == null,
      "Cannot specify both senderId and senderIdFieldValue",
    );
    assert(
      senderName == _sentinel || senderNameFieldValue == null,
      "Cannot specify both senderName and senderNameFieldValue",
    );
    assert(
      senderIconUrl == _sentinel || senderIconUrlFieldValue == null,
      "Cannot specify both senderIconUrl and senderIconUrlFieldValue",
    );
    assert(
      imageUrls == _sentinel || imageUrlsFieldValue == null,
      "Cannot specify both imageUrls and imageUrlsFieldValue",
    );
    assert(
      fileAttached == _sentinel || fileAttachedFieldValue == null,
      "Cannot specify both fileAttached and fileAttachedFieldValue",
    );
    assert(
      replied == _sentinel || repliedFieldValue == null,
      "Cannot specify both replied and repliedFieldValue",
    );
    assert(
      archived == _sentinel || archivedFieldValue == null,
      "Cannot specify both archived and archivedFieldValue",
    );
    assert(
      read == _sentinel || readFieldValue == null,
      "Cannot specify both read and readFieldValue",
    );
    assert(
      positiveReply == _sentinel || positiveReplyFieldValue == null,
      "Cannot specify both positiveReply and positiveReplyFieldValue",
    );
    assert(
      negativeReply == _sentinel || negativeReplyFieldValue == null,
      "Cannot specify both negativeReply and negativeReplyFieldValue",
    );
    assert(
      isScheduleAdjustment == _sentinel ||
          isScheduleAdjustmentFieldValue == null,
      "Cannot specify both isScheduleAdjustment and isScheduleAdjustmentFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      lastUpdatedAt == _sentinel || lastUpdatedAtFieldValue == null,
      "Cannot specify both lastUpdatedAt and lastUpdatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel) _$MessageFieldMap['id']!: id as String,
      if (idFieldValue != null) _$MessageFieldMap['id']!: idFieldValue,
      if (userId != _sentinel) _$MessageFieldMap['userId']!: userId as String,
      if (userIdFieldValue != null)
        _$MessageFieldMap['userId']!: userIdFieldValue,
      if (type != _sentinel) _$MessageFieldMap['type']!: type as String,
      if (typeFieldValue != null) _$MessageFieldMap['type']!: typeFieldValue,
      if (message != _sentinel)
        _$MessageFieldMap['message']!: message as String,
      if (messageFieldValue != null)
        _$MessageFieldMap['message']!: messageFieldValue,
      if (summary != _sentinel)
        _$MessageFieldMap['summary']!: summary as String,
      if (summaryFieldValue != null)
        _$MessageFieldMap['summary']!: summaryFieldValue,
      if (botMessage != _sentinel)
        _$MessageFieldMap['botMessage']!: botMessage as String,
      if (botMessageFieldValue != null)
        _$MessageFieldMap['botMessage']!: botMessageFieldValue,
      if (reply != _sentinel) _$MessageFieldMap['reply']!: reply as String,
      if (replyFieldValue != null) _$MessageFieldMap['reply']!: replyFieldValue,
      if (senderId != _sentinel)
        _$MessageFieldMap['senderId']!: senderId as String,
      if (senderIdFieldValue != null)
        _$MessageFieldMap['senderId']!: senderIdFieldValue,
      if (senderName != _sentinel)
        _$MessageFieldMap['senderName']!: senderName as String,
      if (senderNameFieldValue != null)
        _$MessageFieldMap['senderName']!: senderNameFieldValue,
      if (senderIconUrl != _sentinel)
        _$MessageFieldMap['senderIconUrl']!: senderIconUrl as String?,
      if (senderIconUrlFieldValue != null)
        _$MessageFieldMap['senderIconUrl']!: senderIconUrlFieldValue,
      if (imageUrls != _sentinel)
        _$MessageFieldMap['imageUrls']!: imageUrls as List<String>,
      if (imageUrlsFieldValue != null)
        _$MessageFieldMap['imageUrls']!: imageUrlsFieldValue,
      if (fileAttached != _sentinel)
        _$MessageFieldMap['fileAttached']!: fileAttached as bool,
      if (fileAttachedFieldValue != null)
        _$MessageFieldMap['fileAttached']!: fileAttachedFieldValue,
      if (replied != _sentinel) _$MessageFieldMap['replied']!: replied as bool,
      if (repliedFieldValue != null)
        _$MessageFieldMap['replied']!: repliedFieldValue,
      if (archived != _sentinel)
        _$MessageFieldMap['archived']!: archived as bool,
      if (archivedFieldValue != null)
        _$MessageFieldMap['archived']!: archivedFieldValue,
      if (read != _sentinel) _$MessageFieldMap['read']!: read as bool,
      if (readFieldValue != null) _$MessageFieldMap['read']!: readFieldValue,
      if (positiveReply != _sentinel)
        _$MessageFieldMap['positiveReply']!: positiveReply as String,
      if (positiveReplyFieldValue != null)
        _$MessageFieldMap['positiveReply']!: positiveReplyFieldValue,
      if (negativeReply != _sentinel)
        _$MessageFieldMap['negativeReply']!: negativeReply as String,
      if (negativeReplyFieldValue != null)
        _$MessageFieldMap['negativeReply']!: negativeReplyFieldValue,
      if (isScheduleAdjustment != _sentinel)
        _$MessageFieldMap['isScheduleAdjustment']!:
            isScheduleAdjustment as bool,
      if (isScheduleAdjustmentFieldValue != null)
        _$MessageFieldMap['isScheduleAdjustment']!:
            isScheduleAdjustmentFieldValue,
      if (createdAt != _sentinel)
        _$MessageFieldMap['createdAt']!: createdAt as Timestamp,
      if (createdAtFieldValue != null)
        _$MessageFieldMap['createdAt']!: createdAtFieldValue,
      if (lastUpdatedAt != _sentinel)
        _$MessageFieldMap['lastUpdatedAt']!: lastUpdatedAt as Timestamp,
      if (lastUpdatedAtFieldValue != null)
        _$MessageFieldMap['lastUpdatedAt']!: lastUpdatedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is MessageDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class MessageQuery
    implements QueryReference<Message, MessageQuerySnapshot> {
  @override
  MessageQuery limit(int limit);

  @override
  MessageQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  MessageQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  MessageQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  MessageQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageQuery whereUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageQuery whereType({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageQuery whereMessage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageQuery whereSummary({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageQuery whereBotMessage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageQuery whereReply({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageQuery whereSenderId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageQuery whereSenderName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageQuery whereSenderIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  MessageQuery whereImageUrls({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  });
  MessageQuery whereFileAttached({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  MessageQuery whereReplied({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  MessageQuery whereArchived({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  MessageQuery whereRead({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  MessageQuery wherePositiveReply({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageQuery whereNegativeReply({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  MessageQuery whereIsScheduleAdjustment({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  MessageQuery whereCreatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });
  MessageQuery whereLastUpdatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });

  MessageQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByType({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByMessage({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderBySummary({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByBotMessage({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByReply({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderBySenderId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderBySenderName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderBySenderIconUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByImageUrls({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByFileAttached({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByReplied({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByArchived({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByRead({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByPositiveReply({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByNegativeReply({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByIsScheduleAdjustment({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByCreatedAt({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });

  MessageQuery orderByLastUpdatedAt({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  });
}

class _$MessageQuery extends QueryReference<Message, MessageQuerySnapshot>
    implements MessageQuery {
  _$MessageQuery(
    this._collection, {
    required Query<Message> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<MessageQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(MessageQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<MessageQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MessageQuerySnapshot._fromQuerySnapshot);
  }

  @override
  MessageQuery limit(int limit) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MessageQuery limitToLast(int limit) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['id']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['userId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereType({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['type']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereMessage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['message']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereSummary({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['summary']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereBotMessage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['botMessage']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereReply({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['reply']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereSenderId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['senderId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereSenderName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['senderName']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereSenderIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['senderIconUrl']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereImageUrls({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['imageUrls']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereFileAttached({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['fileAttached']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereReplied({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['replied']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereArchived({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['archived']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereRead({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['read']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery wherePositiveReply({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['positiveReply']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereNegativeReply({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['negativeReply']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereIsScheduleAdjustment({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['isScheduleAdjustment']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereCreatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['createdAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery whereLastUpdatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MessageFieldMap['lastUpdatedAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  MessageQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MessageFieldMap['id']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MessageFieldMap['userId']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MessageFieldMap['type']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByMessage({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MessageFieldMap['message']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderBySummary({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MessageFieldMap['summary']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByBotMessage({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageFieldMap['botMessage']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByReply({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MessageFieldMap['reply']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderBySenderId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageFieldMap['senderId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderBySenderName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageFieldMap['senderName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderBySenderIconUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageFieldMap['senderIconUrl']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByImageUrls({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageFieldMap['imageUrls']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByFileAttached({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageFieldMap['fileAttached']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByReplied({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MessageFieldMap['replied']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByArchived({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageFieldMap['archived']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByRead({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$MessageFieldMap['read']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByPositiveReply({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageFieldMap['positiveReply']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByNegativeReply({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageFieldMap['negativeReply']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByIsScheduleAdjustment({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$MessageFieldMap['isScheduleAdjustment']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageFieldMap['createdAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  MessageQuery orderByLastUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MessageDocumentSnapshot? startAtDocument,
    MessageDocumentSnapshot? endAtDocument,
    MessageDocumentSnapshot? endBeforeDocument,
    MessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$MessageFieldMap['lastUpdatedAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$MessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$MessageQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class MessageDocumentSnapshot extends FirestoreDocumentSnapshot<Message> {
  MessageDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Message> snapshot;

  @override
  MessageDocumentReference get reference {
    return MessageDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Message? data;
}

class MessageQuerySnapshot
    extends FirestoreQuerySnapshot<Message, MessageQueryDocumentSnapshot> {
  MessageQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory MessageQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Message> snapshot,
  ) {
    final docs = snapshot.docs.map(MessageQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        MessageDocumentSnapshot._,
      );
    }).toList();

    return MessageQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<MessageDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    MessageDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<MessageDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Message> snapshot;

  @override
  final List<MessageQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<MessageDocumentSnapshot>> docChanges;
}

class MessageQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Message>
    implements MessageDocumentSnapshot {
  MessageQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Message> snapshot;

  @override
  final Message data;

  @override
  MessageDocumentReference get reference {
    return MessageDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class SlackMessageCollectionReference
    implements
        SlackMessageQuery,
        FirestoreCollectionReference<SlackMessage, SlackMessageQuerySnapshot> {
  factory SlackMessageCollectionReference(
    DocumentReference<Message> parent,
  ) = _$SlackMessageCollectionReference;

  static SlackMessage fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$SlackMessageFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    SlackMessage value,
    SetOptions? options,
  ) {
    return _$SlackMessageToJson(value);
  }

  @override
  CollectionReference<SlackMessage> get reference;

  /// A reference to the containing [MessageDocumentReference] if this is a subcollection.
  MessageDocumentReference get parent;

  @override
  SlackMessageDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SlackMessageDocumentReference> add(SlackMessage value);
}

class _$SlackMessageCollectionReference extends _$SlackMessageQuery
    implements SlackMessageCollectionReference {
  factory _$SlackMessageCollectionReference(
    DocumentReference<Message> parent,
  ) {
    return _$SlackMessageCollectionReference._(
      MessageDocumentReference(parent),
      parent.collection('slack_messages_v1').withConverter(
            fromFirestore: SlackMessageCollectionReference.fromFirestore,
            toFirestore: SlackMessageCollectionReference.toFirestore,
          ),
    );
  }

  _$SlackMessageCollectionReference._(
    this.parent,
    CollectionReference<SlackMessage> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final MessageDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<SlackMessage> get reference =>
      super.reference as CollectionReference<SlackMessage>;

  @override
  SlackMessageDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SlackMessageDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SlackMessageDocumentReference> add(SlackMessage value) {
    return reference
        .add(value)
        .then((ref) => SlackMessageDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SlackMessageCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SlackMessageDocumentReference extends FirestoreDocumentReference<
    SlackMessage, SlackMessageDocumentSnapshot> {
  factory SlackMessageDocumentReference(
          DocumentReference<SlackMessage> reference) =
      _$SlackMessageDocumentReference;

  DocumentReference<SlackMessage> get reference;

  /// A reference to the [SlackMessageCollectionReference] containing this document.
  SlackMessageCollectionReference get parent {
    return _$SlackMessageCollectionReference(
      reference.parent.parent!.withConverter<Message>(
        fromFirestore: MessageCollectionReference.fromFirestore,
        toFirestore: MessageCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<SlackMessageDocumentSnapshot> snapshots();

  @override
  Future<SlackMessageDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String id,
    FieldValue idFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String messageId,
    FieldValue messageIdFieldValue,
    String message,
    FieldValue messageFieldValue,
    String summary,
    FieldValue summaryFieldValue,
    String botMessage,
    FieldValue botMessageFieldValue,
    String senderId,
    FieldValue senderIdFieldValue,
    String senderName,
    FieldValue senderNameFieldValue,
    String? senderIconUrl,
    FieldValue senderIconUrlFieldValue,
    List<String> imageUrls,
    FieldValue imageUrlsFieldValue,
    bool fileAttached,
    FieldValue fileAttachedFieldValue,
    String slackTeamId,
    FieldValue slackTeamIdFieldValue,
    String slackTeamDomain,
    FieldValue slackTeamDomainFieldValue,
    String? slackTeamIconUrl,
    FieldValue slackTeamIconUrlFieldValue,
    String slackTeamName,
    FieldValue slackTeamNameFieldValue,
    String slackUserId,
    FieldValue slackUserIdFieldValue,
    String slackSenderUserId,
    FieldValue slackSenderUserIdFieldValue,
    String slackChannelId,
    FieldValue slackChannelIdFieldValue,
    String slackChannelName,
    FieldValue slackChannelNameFieldValue,
    String slackTs,
    FieldValue slackTsFieldValue,
    String? slackThreadTs,
    FieldValue slackThreadTsFieldValue,
    String event,
    FieldValue eventFieldValue,
    Timestamp createdAt,
    FieldValue createdAtFieldValue,
    Timestamp lastUpdatedAt,
    FieldValue lastUpdatedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String id,
    FieldValue idFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String messageId,
    FieldValue messageIdFieldValue,
    String message,
    FieldValue messageFieldValue,
    String summary,
    FieldValue summaryFieldValue,
    String botMessage,
    FieldValue botMessageFieldValue,
    String senderId,
    FieldValue senderIdFieldValue,
    String senderName,
    FieldValue senderNameFieldValue,
    String? senderIconUrl,
    FieldValue senderIconUrlFieldValue,
    List<String> imageUrls,
    FieldValue imageUrlsFieldValue,
    bool fileAttached,
    FieldValue fileAttachedFieldValue,
    String slackTeamId,
    FieldValue slackTeamIdFieldValue,
    String slackTeamDomain,
    FieldValue slackTeamDomainFieldValue,
    String? slackTeamIconUrl,
    FieldValue slackTeamIconUrlFieldValue,
    String slackTeamName,
    FieldValue slackTeamNameFieldValue,
    String slackUserId,
    FieldValue slackUserIdFieldValue,
    String slackSenderUserId,
    FieldValue slackSenderUserIdFieldValue,
    String slackChannelId,
    FieldValue slackChannelIdFieldValue,
    String slackChannelName,
    FieldValue slackChannelNameFieldValue,
    String slackTs,
    FieldValue slackTsFieldValue,
    String? slackThreadTs,
    FieldValue slackThreadTsFieldValue,
    String event,
    FieldValue eventFieldValue,
    Timestamp createdAt,
    FieldValue createdAtFieldValue,
    Timestamp lastUpdatedAt,
    FieldValue lastUpdatedAtFieldValue,
  });
}

class _$SlackMessageDocumentReference extends FirestoreDocumentReference<
    SlackMessage,
    SlackMessageDocumentSnapshot> implements SlackMessageDocumentReference {
  _$SlackMessageDocumentReference(this.reference);

  @override
  final DocumentReference<SlackMessage> reference;

  /// A reference to the [SlackMessageCollectionReference] containing this document.
  SlackMessageCollectionReference get parent {
    return _$SlackMessageCollectionReference(
      reference.parent.parent!.withConverter<Message>(
        fromFirestore: MessageCollectionReference.fromFirestore,
        toFirestore: MessageCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<SlackMessageDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SlackMessageDocumentSnapshot._);
  }

  @override
  Future<SlackMessageDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SlackMessageDocumentSnapshot._);
  }

  @override
  Future<SlackMessageDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(SlackMessageDocumentSnapshot._);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? messageId = _sentinel,
    FieldValue? messageIdFieldValue,
    Object? message = _sentinel,
    FieldValue? messageFieldValue,
    Object? summary = _sentinel,
    FieldValue? summaryFieldValue,
    Object? botMessage = _sentinel,
    FieldValue? botMessageFieldValue,
    Object? senderId = _sentinel,
    FieldValue? senderIdFieldValue,
    Object? senderName = _sentinel,
    FieldValue? senderNameFieldValue,
    Object? senderIconUrl = _sentinel,
    FieldValue? senderIconUrlFieldValue,
    Object? imageUrls = _sentinel,
    FieldValue? imageUrlsFieldValue,
    Object? fileAttached = _sentinel,
    FieldValue? fileAttachedFieldValue,
    Object? slackTeamId = _sentinel,
    FieldValue? slackTeamIdFieldValue,
    Object? slackTeamDomain = _sentinel,
    FieldValue? slackTeamDomainFieldValue,
    Object? slackTeamIconUrl = _sentinel,
    FieldValue? slackTeamIconUrlFieldValue,
    Object? slackTeamName = _sentinel,
    FieldValue? slackTeamNameFieldValue,
    Object? slackUserId = _sentinel,
    FieldValue? slackUserIdFieldValue,
    Object? slackSenderUserId = _sentinel,
    FieldValue? slackSenderUserIdFieldValue,
    Object? slackChannelId = _sentinel,
    FieldValue? slackChannelIdFieldValue,
    Object? slackChannelName = _sentinel,
    FieldValue? slackChannelNameFieldValue,
    Object? slackTs = _sentinel,
    FieldValue? slackTsFieldValue,
    Object? slackThreadTs = _sentinel,
    FieldValue? slackThreadTsFieldValue,
    Object? event = _sentinel,
    FieldValue? eventFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? lastUpdatedAt = _sentinel,
    FieldValue? lastUpdatedAtFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      messageId == _sentinel || messageIdFieldValue == null,
      "Cannot specify both messageId and messageIdFieldValue",
    );
    assert(
      message == _sentinel || messageFieldValue == null,
      "Cannot specify both message and messageFieldValue",
    );
    assert(
      summary == _sentinel || summaryFieldValue == null,
      "Cannot specify both summary and summaryFieldValue",
    );
    assert(
      botMessage == _sentinel || botMessageFieldValue == null,
      "Cannot specify both botMessage and botMessageFieldValue",
    );
    assert(
      senderId == _sentinel || senderIdFieldValue == null,
      "Cannot specify both senderId and senderIdFieldValue",
    );
    assert(
      senderName == _sentinel || senderNameFieldValue == null,
      "Cannot specify both senderName and senderNameFieldValue",
    );
    assert(
      senderIconUrl == _sentinel || senderIconUrlFieldValue == null,
      "Cannot specify both senderIconUrl and senderIconUrlFieldValue",
    );
    assert(
      imageUrls == _sentinel || imageUrlsFieldValue == null,
      "Cannot specify both imageUrls and imageUrlsFieldValue",
    );
    assert(
      fileAttached == _sentinel || fileAttachedFieldValue == null,
      "Cannot specify both fileAttached and fileAttachedFieldValue",
    );
    assert(
      slackTeamId == _sentinel || slackTeamIdFieldValue == null,
      "Cannot specify both slackTeamId and slackTeamIdFieldValue",
    );
    assert(
      slackTeamDomain == _sentinel || slackTeamDomainFieldValue == null,
      "Cannot specify both slackTeamDomain and slackTeamDomainFieldValue",
    );
    assert(
      slackTeamIconUrl == _sentinel || slackTeamIconUrlFieldValue == null,
      "Cannot specify both slackTeamIconUrl and slackTeamIconUrlFieldValue",
    );
    assert(
      slackTeamName == _sentinel || slackTeamNameFieldValue == null,
      "Cannot specify both slackTeamName and slackTeamNameFieldValue",
    );
    assert(
      slackUserId == _sentinel || slackUserIdFieldValue == null,
      "Cannot specify both slackUserId and slackUserIdFieldValue",
    );
    assert(
      slackSenderUserId == _sentinel || slackSenderUserIdFieldValue == null,
      "Cannot specify both slackSenderUserId and slackSenderUserIdFieldValue",
    );
    assert(
      slackChannelId == _sentinel || slackChannelIdFieldValue == null,
      "Cannot specify both slackChannelId and slackChannelIdFieldValue",
    );
    assert(
      slackChannelName == _sentinel || slackChannelNameFieldValue == null,
      "Cannot specify both slackChannelName and slackChannelNameFieldValue",
    );
    assert(
      slackTs == _sentinel || slackTsFieldValue == null,
      "Cannot specify both slackTs and slackTsFieldValue",
    );
    assert(
      slackThreadTs == _sentinel || slackThreadTsFieldValue == null,
      "Cannot specify both slackThreadTs and slackThreadTsFieldValue",
    );
    assert(
      event == _sentinel || eventFieldValue == null,
      "Cannot specify both event and eventFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      lastUpdatedAt == _sentinel || lastUpdatedAtFieldValue == null,
      "Cannot specify both lastUpdatedAt and lastUpdatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel) _$SlackMessageFieldMap['id']!: id as String,
      if (idFieldValue != null) _$SlackMessageFieldMap['id']!: idFieldValue,
      if (userId != _sentinel)
        _$SlackMessageFieldMap['userId']!: userId as String,
      if (userIdFieldValue != null)
        _$SlackMessageFieldMap['userId']!: userIdFieldValue,
      if (messageId != _sentinel)
        _$SlackMessageFieldMap['messageId']!: messageId as String,
      if (messageIdFieldValue != null)
        _$SlackMessageFieldMap['messageId']!: messageIdFieldValue,
      if (message != _sentinel)
        _$SlackMessageFieldMap['message']!: message as String,
      if (messageFieldValue != null)
        _$SlackMessageFieldMap['message']!: messageFieldValue,
      if (summary != _sentinel)
        _$SlackMessageFieldMap['summary']!: summary as String,
      if (summaryFieldValue != null)
        _$SlackMessageFieldMap['summary']!: summaryFieldValue,
      if (botMessage != _sentinel)
        _$SlackMessageFieldMap['botMessage']!: botMessage as String,
      if (botMessageFieldValue != null)
        _$SlackMessageFieldMap['botMessage']!: botMessageFieldValue,
      if (senderId != _sentinel)
        _$SlackMessageFieldMap['senderId']!: senderId as String,
      if (senderIdFieldValue != null)
        _$SlackMessageFieldMap['senderId']!: senderIdFieldValue,
      if (senderName != _sentinel)
        _$SlackMessageFieldMap['senderName']!: senderName as String,
      if (senderNameFieldValue != null)
        _$SlackMessageFieldMap['senderName']!: senderNameFieldValue,
      if (senderIconUrl != _sentinel)
        _$SlackMessageFieldMap['senderIconUrl']!: senderIconUrl as String?,
      if (senderIconUrlFieldValue != null)
        _$SlackMessageFieldMap['senderIconUrl']!: senderIconUrlFieldValue,
      if (imageUrls != _sentinel)
        _$SlackMessageFieldMap['imageUrls']!: imageUrls as List<String>,
      if (imageUrlsFieldValue != null)
        _$SlackMessageFieldMap['imageUrls']!: imageUrlsFieldValue,
      if (fileAttached != _sentinel)
        _$SlackMessageFieldMap['fileAttached']!: fileAttached as bool,
      if (fileAttachedFieldValue != null)
        _$SlackMessageFieldMap['fileAttached']!: fileAttachedFieldValue,
      if (slackTeamId != _sentinel)
        _$SlackMessageFieldMap['slackTeamId']!: slackTeamId as String,
      if (slackTeamIdFieldValue != null)
        _$SlackMessageFieldMap['slackTeamId']!: slackTeamIdFieldValue,
      if (slackTeamDomain != _sentinel)
        _$SlackMessageFieldMap['slackTeamDomain']!: slackTeamDomain as String,
      if (slackTeamDomainFieldValue != null)
        _$SlackMessageFieldMap['slackTeamDomain']!: slackTeamDomainFieldValue,
      if (slackTeamIconUrl != _sentinel)
        _$SlackMessageFieldMap['slackTeamIconUrl']!:
            slackTeamIconUrl as String?,
      if (slackTeamIconUrlFieldValue != null)
        _$SlackMessageFieldMap['slackTeamIconUrl']!: slackTeamIconUrlFieldValue,
      if (slackTeamName != _sentinel)
        _$SlackMessageFieldMap['slackTeamName']!: slackTeamName as String,
      if (slackTeamNameFieldValue != null)
        _$SlackMessageFieldMap['slackTeamName']!: slackTeamNameFieldValue,
      if (slackUserId != _sentinel)
        _$SlackMessageFieldMap['slackUserId']!: slackUserId as String,
      if (slackUserIdFieldValue != null)
        _$SlackMessageFieldMap['slackUserId']!: slackUserIdFieldValue,
      if (slackSenderUserId != _sentinel)
        _$SlackMessageFieldMap['slackSenderUserId']!:
            slackSenderUserId as String,
      if (slackSenderUserIdFieldValue != null)
        _$SlackMessageFieldMap['slackSenderUserId']!:
            slackSenderUserIdFieldValue,
      if (slackChannelId != _sentinel)
        _$SlackMessageFieldMap['slackChannelId']!: slackChannelId as String,
      if (slackChannelIdFieldValue != null)
        _$SlackMessageFieldMap['slackChannelId']!: slackChannelIdFieldValue,
      if (slackChannelName != _sentinel)
        _$SlackMessageFieldMap['slackChannelName']!: slackChannelName as String,
      if (slackChannelNameFieldValue != null)
        _$SlackMessageFieldMap['slackChannelName']!: slackChannelNameFieldValue,
      if (slackTs != _sentinel)
        _$SlackMessageFieldMap['slackTs']!: slackTs as String,
      if (slackTsFieldValue != null)
        _$SlackMessageFieldMap['slackTs']!: slackTsFieldValue,
      if (slackThreadTs != _sentinel)
        _$SlackMessageFieldMap['slackThreadTs']!: slackThreadTs as String?,
      if (slackThreadTsFieldValue != null)
        _$SlackMessageFieldMap['slackThreadTs']!: slackThreadTsFieldValue,
      if (event != _sentinel) _$SlackMessageFieldMap['event']!: event as String,
      if (eventFieldValue != null)
        _$SlackMessageFieldMap['event']!: eventFieldValue,
      if (createdAt != _sentinel)
        _$SlackMessageFieldMap['createdAt']!: createdAt as Timestamp,
      if (createdAtFieldValue != null)
        _$SlackMessageFieldMap['createdAt']!: createdAtFieldValue,
      if (lastUpdatedAt != _sentinel)
        _$SlackMessageFieldMap['lastUpdatedAt']!: lastUpdatedAt as Timestamp,
      if (lastUpdatedAtFieldValue != null)
        _$SlackMessageFieldMap['lastUpdatedAt']!: lastUpdatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? messageId = _sentinel,
    FieldValue? messageIdFieldValue,
    Object? message = _sentinel,
    FieldValue? messageFieldValue,
    Object? summary = _sentinel,
    FieldValue? summaryFieldValue,
    Object? botMessage = _sentinel,
    FieldValue? botMessageFieldValue,
    Object? senderId = _sentinel,
    FieldValue? senderIdFieldValue,
    Object? senderName = _sentinel,
    FieldValue? senderNameFieldValue,
    Object? senderIconUrl = _sentinel,
    FieldValue? senderIconUrlFieldValue,
    Object? imageUrls = _sentinel,
    FieldValue? imageUrlsFieldValue,
    Object? fileAttached = _sentinel,
    FieldValue? fileAttachedFieldValue,
    Object? slackTeamId = _sentinel,
    FieldValue? slackTeamIdFieldValue,
    Object? slackTeamDomain = _sentinel,
    FieldValue? slackTeamDomainFieldValue,
    Object? slackTeamIconUrl = _sentinel,
    FieldValue? slackTeamIconUrlFieldValue,
    Object? slackTeamName = _sentinel,
    FieldValue? slackTeamNameFieldValue,
    Object? slackUserId = _sentinel,
    FieldValue? slackUserIdFieldValue,
    Object? slackSenderUserId = _sentinel,
    FieldValue? slackSenderUserIdFieldValue,
    Object? slackChannelId = _sentinel,
    FieldValue? slackChannelIdFieldValue,
    Object? slackChannelName = _sentinel,
    FieldValue? slackChannelNameFieldValue,
    Object? slackTs = _sentinel,
    FieldValue? slackTsFieldValue,
    Object? slackThreadTs = _sentinel,
    FieldValue? slackThreadTsFieldValue,
    Object? event = _sentinel,
    FieldValue? eventFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? lastUpdatedAt = _sentinel,
    FieldValue? lastUpdatedAtFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      messageId == _sentinel || messageIdFieldValue == null,
      "Cannot specify both messageId and messageIdFieldValue",
    );
    assert(
      message == _sentinel || messageFieldValue == null,
      "Cannot specify both message and messageFieldValue",
    );
    assert(
      summary == _sentinel || summaryFieldValue == null,
      "Cannot specify both summary and summaryFieldValue",
    );
    assert(
      botMessage == _sentinel || botMessageFieldValue == null,
      "Cannot specify both botMessage and botMessageFieldValue",
    );
    assert(
      senderId == _sentinel || senderIdFieldValue == null,
      "Cannot specify both senderId and senderIdFieldValue",
    );
    assert(
      senderName == _sentinel || senderNameFieldValue == null,
      "Cannot specify both senderName and senderNameFieldValue",
    );
    assert(
      senderIconUrl == _sentinel || senderIconUrlFieldValue == null,
      "Cannot specify both senderIconUrl and senderIconUrlFieldValue",
    );
    assert(
      imageUrls == _sentinel || imageUrlsFieldValue == null,
      "Cannot specify both imageUrls and imageUrlsFieldValue",
    );
    assert(
      fileAttached == _sentinel || fileAttachedFieldValue == null,
      "Cannot specify both fileAttached and fileAttachedFieldValue",
    );
    assert(
      slackTeamId == _sentinel || slackTeamIdFieldValue == null,
      "Cannot specify both slackTeamId and slackTeamIdFieldValue",
    );
    assert(
      slackTeamDomain == _sentinel || slackTeamDomainFieldValue == null,
      "Cannot specify both slackTeamDomain and slackTeamDomainFieldValue",
    );
    assert(
      slackTeamIconUrl == _sentinel || slackTeamIconUrlFieldValue == null,
      "Cannot specify both slackTeamIconUrl and slackTeamIconUrlFieldValue",
    );
    assert(
      slackTeamName == _sentinel || slackTeamNameFieldValue == null,
      "Cannot specify both slackTeamName and slackTeamNameFieldValue",
    );
    assert(
      slackUserId == _sentinel || slackUserIdFieldValue == null,
      "Cannot specify both slackUserId and slackUserIdFieldValue",
    );
    assert(
      slackSenderUserId == _sentinel || slackSenderUserIdFieldValue == null,
      "Cannot specify both slackSenderUserId and slackSenderUserIdFieldValue",
    );
    assert(
      slackChannelId == _sentinel || slackChannelIdFieldValue == null,
      "Cannot specify both slackChannelId and slackChannelIdFieldValue",
    );
    assert(
      slackChannelName == _sentinel || slackChannelNameFieldValue == null,
      "Cannot specify both slackChannelName and slackChannelNameFieldValue",
    );
    assert(
      slackTs == _sentinel || slackTsFieldValue == null,
      "Cannot specify both slackTs and slackTsFieldValue",
    );
    assert(
      slackThreadTs == _sentinel || slackThreadTsFieldValue == null,
      "Cannot specify both slackThreadTs and slackThreadTsFieldValue",
    );
    assert(
      event == _sentinel || eventFieldValue == null,
      "Cannot specify both event and eventFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      lastUpdatedAt == _sentinel || lastUpdatedAtFieldValue == null,
      "Cannot specify both lastUpdatedAt and lastUpdatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel) _$SlackMessageFieldMap['id']!: id as String,
      if (idFieldValue != null) _$SlackMessageFieldMap['id']!: idFieldValue,
      if (userId != _sentinel)
        _$SlackMessageFieldMap['userId']!: userId as String,
      if (userIdFieldValue != null)
        _$SlackMessageFieldMap['userId']!: userIdFieldValue,
      if (messageId != _sentinel)
        _$SlackMessageFieldMap['messageId']!: messageId as String,
      if (messageIdFieldValue != null)
        _$SlackMessageFieldMap['messageId']!: messageIdFieldValue,
      if (message != _sentinel)
        _$SlackMessageFieldMap['message']!: message as String,
      if (messageFieldValue != null)
        _$SlackMessageFieldMap['message']!: messageFieldValue,
      if (summary != _sentinel)
        _$SlackMessageFieldMap['summary']!: summary as String,
      if (summaryFieldValue != null)
        _$SlackMessageFieldMap['summary']!: summaryFieldValue,
      if (botMessage != _sentinel)
        _$SlackMessageFieldMap['botMessage']!: botMessage as String,
      if (botMessageFieldValue != null)
        _$SlackMessageFieldMap['botMessage']!: botMessageFieldValue,
      if (senderId != _sentinel)
        _$SlackMessageFieldMap['senderId']!: senderId as String,
      if (senderIdFieldValue != null)
        _$SlackMessageFieldMap['senderId']!: senderIdFieldValue,
      if (senderName != _sentinel)
        _$SlackMessageFieldMap['senderName']!: senderName as String,
      if (senderNameFieldValue != null)
        _$SlackMessageFieldMap['senderName']!: senderNameFieldValue,
      if (senderIconUrl != _sentinel)
        _$SlackMessageFieldMap['senderIconUrl']!: senderIconUrl as String?,
      if (senderIconUrlFieldValue != null)
        _$SlackMessageFieldMap['senderIconUrl']!: senderIconUrlFieldValue,
      if (imageUrls != _sentinel)
        _$SlackMessageFieldMap['imageUrls']!: imageUrls as List<String>,
      if (imageUrlsFieldValue != null)
        _$SlackMessageFieldMap['imageUrls']!: imageUrlsFieldValue,
      if (fileAttached != _sentinel)
        _$SlackMessageFieldMap['fileAttached']!: fileAttached as bool,
      if (fileAttachedFieldValue != null)
        _$SlackMessageFieldMap['fileAttached']!: fileAttachedFieldValue,
      if (slackTeamId != _sentinel)
        _$SlackMessageFieldMap['slackTeamId']!: slackTeamId as String,
      if (slackTeamIdFieldValue != null)
        _$SlackMessageFieldMap['slackTeamId']!: slackTeamIdFieldValue,
      if (slackTeamDomain != _sentinel)
        _$SlackMessageFieldMap['slackTeamDomain']!: slackTeamDomain as String,
      if (slackTeamDomainFieldValue != null)
        _$SlackMessageFieldMap['slackTeamDomain']!: slackTeamDomainFieldValue,
      if (slackTeamIconUrl != _sentinel)
        _$SlackMessageFieldMap['slackTeamIconUrl']!:
            slackTeamIconUrl as String?,
      if (slackTeamIconUrlFieldValue != null)
        _$SlackMessageFieldMap['slackTeamIconUrl']!: slackTeamIconUrlFieldValue,
      if (slackTeamName != _sentinel)
        _$SlackMessageFieldMap['slackTeamName']!: slackTeamName as String,
      if (slackTeamNameFieldValue != null)
        _$SlackMessageFieldMap['slackTeamName']!: slackTeamNameFieldValue,
      if (slackUserId != _sentinel)
        _$SlackMessageFieldMap['slackUserId']!: slackUserId as String,
      if (slackUserIdFieldValue != null)
        _$SlackMessageFieldMap['slackUserId']!: slackUserIdFieldValue,
      if (slackSenderUserId != _sentinel)
        _$SlackMessageFieldMap['slackSenderUserId']!:
            slackSenderUserId as String,
      if (slackSenderUserIdFieldValue != null)
        _$SlackMessageFieldMap['slackSenderUserId']!:
            slackSenderUserIdFieldValue,
      if (slackChannelId != _sentinel)
        _$SlackMessageFieldMap['slackChannelId']!: slackChannelId as String,
      if (slackChannelIdFieldValue != null)
        _$SlackMessageFieldMap['slackChannelId']!: slackChannelIdFieldValue,
      if (slackChannelName != _sentinel)
        _$SlackMessageFieldMap['slackChannelName']!: slackChannelName as String,
      if (slackChannelNameFieldValue != null)
        _$SlackMessageFieldMap['slackChannelName']!: slackChannelNameFieldValue,
      if (slackTs != _sentinel)
        _$SlackMessageFieldMap['slackTs']!: slackTs as String,
      if (slackTsFieldValue != null)
        _$SlackMessageFieldMap['slackTs']!: slackTsFieldValue,
      if (slackThreadTs != _sentinel)
        _$SlackMessageFieldMap['slackThreadTs']!: slackThreadTs as String?,
      if (slackThreadTsFieldValue != null)
        _$SlackMessageFieldMap['slackThreadTs']!: slackThreadTsFieldValue,
      if (event != _sentinel) _$SlackMessageFieldMap['event']!: event as String,
      if (eventFieldValue != null)
        _$SlackMessageFieldMap['event']!: eventFieldValue,
      if (createdAt != _sentinel)
        _$SlackMessageFieldMap['createdAt']!: createdAt as Timestamp,
      if (createdAtFieldValue != null)
        _$SlackMessageFieldMap['createdAt']!: createdAtFieldValue,
      if (lastUpdatedAt != _sentinel)
        _$SlackMessageFieldMap['lastUpdatedAt']!: lastUpdatedAt as Timestamp,
      if (lastUpdatedAtFieldValue != null)
        _$SlackMessageFieldMap['lastUpdatedAt']!: lastUpdatedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SlackMessageDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SlackMessageQuery
    implements QueryReference<SlackMessage, SlackMessageQuerySnapshot> {
  @override
  SlackMessageQuery limit(int limit);

  @override
  SlackMessageQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  SlackMessageQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  SlackMessageQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  SlackMessageQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereMessageId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereMessage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereSummary({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereBotMessage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereSenderId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereSenderName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereSenderIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  SlackMessageQuery whereImageUrls({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  });
  SlackMessageQuery whereFileAttached({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  SlackMessageQuery whereSlackTeamId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereSlackTeamDomain({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereSlackTeamIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  SlackMessageQuery whereSlackTeamName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereSlackUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereSlackSenderUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereSlackChannelId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereSlackChannelName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereSlackTs({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereSlackThreadTs({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  SlackMessageQuery whereEvent({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackMessageQuery whereCreatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });
  SlackMessageQuery whereLastUpdatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });

  SlackMessageQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderByMessageId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderByMessage({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySummary({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderByBotMessage({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySenderId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySenderName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySenderIconUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderByImageUrls({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderByFileAttached({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySlackTeamId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySlackTeamDomain({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySlackTeamIconUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySlackTeamName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySlackUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySlackSenderUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySlackChannelId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySlackChannelName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySlackTs({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderBySlackThreadTs({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderByEvent({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderByCreatedAt({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });

  SlackMessageQuery orderByLastUpdatedAt({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  });
}

class _$SlackMessageQuery
    extends QueryReference<SlackMessage, SlackMessageQuerySnapshot>
    implements SlackMessageQuery {
  _$SlackMessageQuery(
    this._collection, {
    required Query<SlackMessage> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SlackMessageQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(SlackMessageQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SlackMessageQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(SlackMessageQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SlackMessageQuery limit(int limit) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SlackMessageQuery limitToLast(int limit) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['id']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['userId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereMessageId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['messageId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereMessage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['message']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSummary({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['summary']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereBotMessage({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['botMessage']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSenderId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['senderId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSenderName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['senderName']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSenderIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['senderIconUrl']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereImageUrls({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['imageUrls']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereFileAttached({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['fileAttached']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSlackTeamId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['slackTeamId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSlackTeamDomain({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['slackTeamDomain']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSlackTeamIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['slackTeamIconUrl']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSlackTeamName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['slackTeamName']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSlackUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['slackUserId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSlackSenderUserId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['slackSenderUserId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSlackChannelId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['slackChannelId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSlackChannelName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['slackChannelName']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSlackTs({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['slackTs']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereSlackThreadTs({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['slackThreadTs']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereEvent({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['event']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereCreatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['createdAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery whereLastUpdatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackMessageFieldMap['lastUpdatedAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackMessageQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SlackMessageFieldMap['id']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackMessageFieldMap['userId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderByMessageId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackMessageFieldMap['messageId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderByMessage({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackMessageFieldMap['message']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySummary({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackMessageFieldMap['summary']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderByBotMessage({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackMessageFieldMap['botMessage']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySenderId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackMessageFieldMap['senderId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySenderName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackMessageFieldMap['senderName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySenderIconUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackMessageFieldMap['senderIconUrl']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderByImageUrls({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackMessageFieldMap['imageUrls']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderByFileAttached({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackMessageFieldMap['fileAttached']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySlackTeamId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackMessageFieldMap['slackTeamId']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySlackTeamDomain({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackMessageFieldMap['slackTeamDomain']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySlackTeamIconUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackMessageFieldMap['slackTeamIconUrl']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySlackTeamName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackMessageFieldMap['slackTeamName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySlackUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackMessageFieldMap['slackUserId']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySlackSenderUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackMessageFieldMap['slackSenderUserId']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySlackChannelId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackMessageFieldMap['slackChannelId']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySlackChannelName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackMessageFieldMap['slackChannelName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySlackTs({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackMessageFieldMap['slackTs']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderBySlackThreadTs({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackMessageFieldMap['slackThreadTs']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderByEvent({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackMessageFieldMap['event']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackMessageFieldMap['createdAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackMessageQuery orderByLastUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackMessageDocumentSnapshot? startAtDocument,
    SlackMessageDocumentSnapshot? endAtDocument,
    SlackMessageDocumentSnapshot? endBeforeDocument,
    SlackMessageDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackMessageFieldMap['lastUpdatedAt']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackMessageQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SlackMessageQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SlackMessageDocumentSnapshot
    extends FirestoreDocumentSnapshot<SlackMessage> {
  SlackMessageDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<SlackMessage> snapshot;

  @override
  SlackMessageDocumentReference get reference {
    return SlackMessageDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final SlackMessage? data;
}

class SlackMessageQuerySnapshot extends FirestoreQuerySnapshot<SlackMessage,
    SlackMessageQueryDocumentSnapshot> {
  SlackMessageQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SlackMessageQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<SlackMessage> snapshot,
  ) {
    final docs =
        snapshot.docs.map(SlackMessageQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SlackMessageDocumentSnapshot._,
      );
    }).toList();

    return SlackMessageQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SlackMessageDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SlackMessageDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<SlackMessageDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<SlackMessage> snapshot;

  @override
  final List<SlackMessageQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SlackMessageDocumentSnapshot>> docChanges;
}

class SlackMessageQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<SlackMessage>
    implements SlackMessageDocumentSnapshot {
  SlackMessageQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<SlackMessage> snapshot;

  @override
  final SlackMessage data;

  @override
  SlackMessageDocumentReference get reference {
    return SlackMessageDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class SenderCollectionReference
    implements
        SenderQuery,
        FirestoreCollectionReference<Sender, SenderQuerySnapshot> {
  factory SenderCollectionReference(
    DocumentReference<User> parent,
  ) = _$SenderCollectionReference;

  static Sender fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$SenderFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Sender value,
    SetOptions? options,
  ) {
    return _$SenderToJson(value);
  }

  @override
  CollectionReference<Sender> get reference;

  /// A reference to the containing [UserDocumentReference] if this is a subcollection.
  UserDocumentReference get parent;

  @override
  SenderDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SenderDocumentReference> add(Sender value);
}

class _$SenderCollectionReference extends _$SenderQuery
    implements SenderCollectionReference {
  factory _$SenderCollectionReference(
    DocumentReference<User> parent,
  ) {
    return _$SenderCollectionReference._(
      UserDocumentReference(parent),
      parent.collection('senders_v1').withConverter(
            fromFirestore: SenderCollectionReference.fromFirestore,
            toFirestore: SenderCollectionReference.toFirestore,
          ),
    );
  }

  _$SenderCollectionReference._(
    this.parent,
    CollectionReference<Sender> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Sender> get reference =>
      super.reference as CollectionReference<Sender>;

  @override
  SenderDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SenderDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SenderDocumentReference> add(Sender value) {
    return reference.add(value).then((ref) => SenderDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SenderCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SenderDocumentReference
    extends FirestoreDocumentReference<Sender, SenderDocumentSnapshot> {
  factory SenderDocumentReference(DocumentReference<Sender> reference) =
      _$SenderDocumentReference;

  DocumentReference<Sender> get reference;

  /// A reference to the [SenderCollectionReference] containing this document.
  SenderCollectionReference get parent {
    return _$SenderCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  late final SlackSenderCollectionReference slackSendersV1 =
      _$SlackSenderCollectionReference(
    reference,
  );

  @override
  Stream<SenderDocumentSnapshot> snapshots();

  @override
  Future<SenderDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String id,
    FieldValue idFieldValue,
    String senderName,
    FieldValue senderNameFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    String type,
    FieldValue typeFieldValue,
    List<String> groupIds,
    FieldValue groupIdsFieldValue,
    String? iconUrl,
    FieldValue iconUrlFieldValue,
    Timestamp createdAt,
    FieldValue createdAtFieldValue,
    Timestamp lastUpdatedAt,
    FieldValue lastUpdatedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String id,
    FieldValue idFieldValue,
    String senderName,
    FieldValue senderNameFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    String type,
    FieldValue typeFieldValue,
    List<String> groupIds,
    FieldValue groupIdsFieldValue,
    String? iconUrl,
    FieldValue iconUrlFieldValue,
    Timestamp createdAt,
    FieldValue createdAtFieldValue,
    Timestamp lastUpdatedAt,
    FieldValue lastUpdatedAtFieldValue,
  });
}

class _$SenderDocumentReference
    extends FirestoreDocumentReference<Sender, SenderDocumentSnapshot>
    implements SenderDocumentReference {
  _$SenderDocumentReference(this.reference);

  @override
  final DocumentReference<Sender> reference;

  /// A reference to the [SenderCollectionReference] containing this document.
  SenderCollectionReference get parent {
    return _$SenderCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  late final SlackSenderCollectionReference slackSendersV1 =
      _$SlackSenderCollectionReference(
    reference,
  );

  @override
  Stream<SenderDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SenderDocumentSnapshot._);
  }

  @override
  Future<SenderDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SenderDocumentSnapshot._);
  }

  @override
  Future<SenderDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(SenderDocumentSnapshot._);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? senderName = _sentinel,
    FieldValue? senderNameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? groupIds = _sentinel,
    FieldValue? groupIdsFieldValue,
    Object? iconUrl = _sentinel,
    FieldValue? iconUrlFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? lastUpdatedAt = _sentinel,
    FieldValue? lastUpdatedAtFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      senderName == _sentinel || senderNameFieldValue == null,
      "Cannot specify both senderName and senderNameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      groupIds == _sentinel || groupIdsFieldValue == null,
      "Cannot specify both groupIds and groupIdsFieldValue",
    );
    assert(
      iconUrl == _sentinel || iconUrlFieldValue == null,
      "Cannot specify both iconUrl and iconUrlFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      lastUpdatedAt == _sentinel || lastUpdatedAtFieldValue == null,
      "Cannot specify both lastUpdatedAt and lastUpdatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel) _$SenderFieldMap['id']!: id as String,
      if (idFieldValue != null) _$SenderFieldMap['id']!: idFieldValue,
      if (senderName != _sentinel)
        _$SenderFieldMap['senderName']!: senderName as String,
      if (senderNameFieldValue != null)
        _$SenderFieldMap['senderName']!: senderNameFieldValue,
      if (description != _sentinel)
        _$SenderFieldMap['description']!: description as String,
      if (descriptionFieldValue != null)
        _$SenderFieldMap['description']!: descriptionFieldValue,
      if (type != _sentinel) _$SenderFieldMap['type']!: type as String,
      if (typeFieldValue != null) _$SenderFieldMap['type']!: typeFieldValue,
      if (groupIds != _sentinel)
        _$SenderFieldMap['groupIds']!: groupIds as List<String>,
      if (groupIdsFieldValue != null)
        _$SenderFieldMap['groupIds']!: groupIdsFieldValue,
      if (iconUrl != _sentinel)
        _$SenderFieldMap['iconUrl']!: iconUrl as String?,
      if (iconUrlFieldValue != null)
        _$SenderFieldMap['iconUrl']!: iconUrlFieldValue,
      if (createdAt != _sentinel)
        _$SenderFieldMap['createdAt']!: createdAt as Timestamp,
      if (createdAtFieldValue != null)
        _$SenderFieldMap['createdAt']!: createdAtFieldValue,
      if (lastUpdatedAt != _sentinel)
        _$SenderFieldMap['lastUpdatedAt']!: lastUpdatedAt as Timestamp,
      if (lastUpdatedAtFieldValue != null)
        _$SenderFieldMap['lastUpdatedAt']!: lastUpdatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? senderName = _sentinel,
    FieldValue? senderNameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? groupIds = _sentinel,
    FieldValue? groupIdsFieldValue,
    Object? iconUrl = _sentinel,
    FieldValue? iconUrlFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? lastUpdatedAt = _sentinel,
    FieldValue? lastUpdatedAtFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      senderName == _sentinel || senderNameFieldValue == null,
      "Cannot specify both senderName and senderNameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      groupIds == _sentinel || groupIdsFieldValue == null,
      "Cannot specify both groupIds and groupIdsFieldValue",
    );
    assert(
      iconUrl == _sentinel || iconUrlFieldValue == null,
      "Cannot specify both iconUrl and iconUrlFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      lastUpdatedAt == _sentinel || lastUpdatedAtFieldValue == null,
      "Cannot specify both lastUpdatedAt and lastUpdatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel) _$SenderFieldMap['id']!: id as String,
      if (idFieldValue != null) _$SenderFieldMap['id']!: idFieldValue,
      if (senderName != _sentinel)
        _$SenderFieldMap['senderName']!: senderName as String,
      if (senderNameFieldValue != null)
        _$SenderFieldMap['senderName']!: senderNameFieldValue,
      if (description != _sentinel)
        _$SenderFieldMap['description']!: description as String,
      if (descriptionFieldValue != null)
        _$SenderFieldMap['description']!: descriptionFieldValue,
      if (type != _sentinel) _$SenderFieldMap['type']!: type as String,
      if (typeFieldValue != null) _$SenderFieldMap['type']!: typeFieldValue,
      if (groupIds != _sentinel)
        _$SenderFieldMap['groupIds']!: groupIds as List<String>,
      if (groupIdsFieldValue != null)
        _$SenderFieldMap['groupIds']!: groupIdsFieldValue,
      if (iconUrl != _sentinel)
        _$SenderFieldMap['iconUrl']!: iconUrl as String?,
      if (iconUrlFieldValue != null)
        _$SenderFieldMap['iconUrl']!: iconUrlFieldValue,
      if (createdAt != _sentinel)
        _$SenderFieldMap['createdAt']!: createdAt as Timestamp,
      if (createdAtFieldValue != null)
        _$SenderFieldMap['createdAt']!: createdAtFieldValue,
      if (lastUpdatedAt != _sentinel)
        _$SenderFieldMap['lastUpdatedAt']!: lastUpdatedAt as Timestamp,
      if (lastUpdatedAtFieldValue != null)
        _$SenderFieldMap['lastUpdatedAt']!: lastUpdatedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SenderDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SenderQuery
    implements QueryReference<Sender, SenderQuerySnapshot> {
  @override
  SenderQuery limit(int limit);

  @override
  SenderQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  SenderQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  SenderQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  SenderQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SenderQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SenderQuery whereSenderName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SenderQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SenderQuery whereType({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SenderQuery whereGroupIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  });
  SenderQuery whereIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  SenderQuery whereCreatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });
  SenderQuery whereLastUpdatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });

  SenderQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  });

  SenderQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  });

  SenderQuery orderBySenderName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  });

  SenderQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  });

  SenderQuery orderByType({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  });

  SenderQuery orderByGroupIds({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  });

  SenderQuery orderByIconUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  });

  SenderQuery orderByCreatedAt({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  });

  SenderQuery orderByLastUpdatedAt({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  });
}

class _$SenderQuery extends QueryReference<Sender, SenderQuerySnapshot>
    implements SenderQuery {
  _$SenderQuery(
    this._collection, {
    required Query<Sender> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SenderQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(SenderQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SenderQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SenderQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SenderQuery limit(int limit) {
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SenderQuery limitToLast(int limit) {
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  SenderQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SenderQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SenderQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SenderQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SenderFieldMap['id']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SenderQuery whereSenderName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SenderFieldMap['senderName']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SenderQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SenderFieldMap['description']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SenderQuery whereType({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SenderFieldMap['type']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SenderQuery whereGroupIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    bool? isNull,
    String? arrayContains,
    List<String>? arrayContainsAny,
  }) {
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SenderFieldMap['groupIds']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SenderQuery whereIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SenderFieldMap['iconUrl']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SenderQuery whereCreatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SenderFieldMap['createdAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SenderQuery whereLastUpdatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SenderFieldMap['lastUpdatedAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SenderQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SenderQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SenderFieldMap['id']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SenderQuery orderBySenderName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SenderFieldMap['senderName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SenderQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SenderFieldMap['description']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SenderQuery orderByType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SenderFieldMap['type']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SenderQuery orderByGroupIds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SenderFieldMap['groupIds']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SenderQuery orderByIconUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SenderFieldMap['iconUrl']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SenderQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SenderFieldMap['createdAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SenderQuery orderByLastUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SenderDocumentSnapshot? startAtDocument,
    SenderDocumentSnapshot? endAtDocument,
    SenderDocumentSnapshot? endBeforeDocument,
    SenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SenderFieldMap['lastUpdatedAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SenderQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SenderDocumentSnapshot extends FirestoreDocumentSnapshot<Sender> {
  SenderDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Sender> snapshot;

  @override
  SenderDocumentReference get reference {
    return SenderDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Sender? data;
}

class SenderQuerySnapshot
    extends FirestoreQuerySnapshot<Sender, SenderQueryDocumentSnapshot> {
  SenderQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SenderQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Sender> snapshot,
  ) {
    final docs = snapshot.docs.map(SenderQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SenderDocumentSnapshot._,
      );
    }).toList();

    return SenderQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SenderDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SenderDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<SenderDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Sender> snapshot;

  @override
  final List<SenderQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SenderDocumentSnapshot>> docChanges;
}

class SenderQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Sender>
    implements SenderDocumentSnapshot {
  SenderQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Sender> snapshot;

  @override
  final Sender data;

  @override
  SenderDocumentReference get reference {
    return SenderDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class SlackSenderCollectionReference
    implements
        SlackSenderQuery,
        FirestoreCollectionReference<SlackSender, SlackSenderQuerySnapshot> {
  factory SlackSenderCollectionReference(
    DocumentReference<Sender> parent,
  ) = _$SlackSenderCollectionReference;

  static SlackSender fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$SlackSenderFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    SlackSender value,
    SetOptions? options,
  ) {
    return _$SlackSenderToJson(value);
  }

  @override
  CollectionReference<SlackSender> get reference;

  /// A reference to the containing [SenderDocumentReference] if this is a subcollection.
  SenderDocumentReference get parent;

  @override
  SlackSenderDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<SlackSenderDocumentReference> add(SlackSender value);
}

class _$SlackSenderCollectionReference extends _$SlackSenderQuery
    implements SlackSenderCollectionReference {
  factory _$SlackSenderCollectionReference(
    DocumentReference<Sender> parent,
  ) {
    return _$SlackSenderCollectionReference._(
      SenderDocumentReference(parent),
      parent.collection('slack_senders_v1').withConverter(
            fromFirestore: SlackSenderCollectionReference.fromFirestore,
            toFirestore: SlackSenderCollectionReference.toFirestore,
          ),
    );
  }

  _$SlackSenderCollectionReference._(
    this.parent,
    CollectionReference<SlackSender> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final SenderDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<SlackSender> get reference =>
      super.reference as CollectionReference<SlackSender>;

  @override
  SlackSenderDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return SlackSenderDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<SlackSenderDocumentReference> add(SlackSender value) {
    return reference
        .add(value)
        .then((ref) => SlackSenderDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$SlackSenderCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class SlackSenderDocumentReference extends FirestoreDocumentReference<
    SlackSender, SlackSenderDocumentSnapshot> {
  factory SlackSenderDocumentReference(
          DocumentReference<SlackSender> reference) =
      _$SlackSenderDocumentReference;

  DocumentReference<SlackSender> get reference;

  /// A reference to the [SlackSenderCollectionReference] containing this document.
  SlackSenderCollectionReference get parent {
    return _$SlackSenderCollectionReference(
      reference.parent.parent!.withConverter<Sender>(
        fromFirestore: SenderCollectionReference.fromFirestore,
        toFirestore: SenderCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<SlackSenderDocumentSnapshot> snapshots();

  @override
  Future<SlackSenderDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String id,
    FieldValue idFieldValue,
    String senderId,
    FieldValue senderIdFieldValue,
    String senderName,
    FieldValue senderNameFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    String? iconUrl,
    FieldValue iconUrlFieldValue,
    String slackTeamId,
    FieldValue slackTeamIdFieldValue,
    String slackTeamDomain,
    FieldValue slackTeamDomainFieldValue,
    String? slackTeamIconUrl,
    FieldValue slackTeamIconUrlFieldValue,
    String slackTeamName,
    FieldValue slackTeamNameFieldValue,
    Timestamp createdAt,
    FieldValue createdAtFieldValue,
    Timestamp lastUpdatedAt,
    FieldValue lastUpdatedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String id,
    FieldValue idFieldValue,
    String senderId,
    FieldValue senderIdFieldValue,
    String senderName,
    FieldValue senderNameFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    String? iconUrl,
    FieldValue iconUrlFieldValue,
    String slackTeamId,
    FieldValue slackTeamIdFieldValue,
    String slackTeamDomain,
    FieldValue slackTeamDomainFieldValue,
    String? slackTeamIconUrl,
    FieldValue slackTeamIconUrlFieldValue,
    String slackTeamName,
    FieldValue slackTeamNameFieldValue,
    Timestamp createdAt,
    FieldValue createdAtFieldValue,
    Timestamp lastUpdatedAt,
    FieldValue lastUpdatedAtFieldValue,
  });
}

class _$SlackSenderDocumentReference
    extends FirestoreDocumentReference<SlackSender, SlackSenderDocumentSnapshot>
    implements SlackSenderDocumentReference {
  _$SlackSenderDocumentReference(this.reference);

  @override
  final DocumentReference<SlackSender> reference;

  /// A reference to the [SlackSenderCollectionReference] containing this document.
  SlackSenderCollectionReference get parent {
    return _$SlackSenderCollectionReference(
      reference.parent.parent!.withConverter<Sender>(
        fromFirestore: SenderCollectionReference.fromFirestore,
        toFirestore: SenderCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<SlackSenderDocumentSnapshot> snapshots() {
    return reference.snapshots().map(SlackSenderDocumentSnapshot._);
  }

  @override
  Future<SlackSenderDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(SlackSenderDocumentSnapshot._);
  }

  @override
  Future<SlackSenderDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(SlackSenderDocumentSnapshot._);
  }

  Future<void> update({
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? senderId = _sentinel,
    FieldValue? senderIdFieldValue,
    Object? senderName = _sentinel,
    FieldValue? senderNameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? iconUrl = _sentinel,
    FieldValue? iconUrlFieldValue,
    Object? slackTeamId = _sentinel,
    FieldValue? slackTeamIdFieldValue,
    Object? slackTeamDomain = _sentinel,
    FieldValue? slackTeamDomainFieldValue,
    Object? slackTeamIconUrl = _sentinel,
    FieldValue? slackTeamIconUrlFieldValue,
    Object? slackTeamName = _sentinel,
    FieldValue? slackTeamNameFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? lastUpdatedAt = _sentinel,
    FieldValue? lastUpdatedAtFieldValue,
  }) async {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      senderId == _sentinel || senderIdFieldValue == null,
      "Cannot specify both senderId and senderIdFieldValue",
    );
    assert(
      senderName == _sentinel || senderNameFieldValue == null,
      "Cannot specify both senderName and senderNameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      iconUrl == _sentinel || iconUrlFieldValue == null,
      "Cannot specify both iconUrl and iconUrlFieldValue",
    );
    assert(
      slackTeamId == _sentinel || slackTeamIdFieldValue == null,
      "Cannot specify both slackTeamId and slackTeamIdFieldValue",
    );
    assert(
      slackTeamDomain == _sentinel || slackTeamDomainFieldValue == null,
      "Cannot specify both slackTeamDomain and slackTeamDomainFieldValue",
    );
    assert(
      slackTeamIconUrl == _sentinel || slackTeamIconUrlFieldValue == null,
      "Cannot specify both slackTeamIconUrl and slackTeamIconUrlFieldValue",
    );
    assert(
      slackTeamName == _sentinel || slackTeamNameFieldValue == null,
      "Cannot specify both slackTeamName and slackTeamNameFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      lastUpdatedAt == _sentinel || lastUpdatedAtFieldValue == null,
      "Cannot specify both lastUpdatedAt and lastUpdatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel) _$SlackSenderFieldMap['id']!: id as String,
      if (idFieldValue != null) _$SlackSenderFieldMap['id']!: idFieldValue,
      if (senderId != _sentinel)
        _$SlackSenderFieldMap['senderId']!: senderId as String,
      if (senderIdFieldValue != null)
        _$SlackSenderFieldMap['senderId']!: senderIdFieldValue,
      if (senderName != _sentinel)
        _$SlackSenderFieldMap['senderName']!: senderName as String,
      if (senderNameFieldValue != null)
        _$SlackSenderFieldMap['senderName']!: senderNameFieldValue,
      if (description != _sentinel)
        _$SlackSenderFieldMap['description']!: description as String,
      if (descriptionFieldValue != null)
        _$SlackSenderFieldMap['description']!: descriptionFieldValue,
      if (iconUrl != _sentinel)
        _$SlackSenderFieldMap['iconUrl']!: iconUrl as String?,
      if (iconUrlFieldValue != null)
        _$SlackSenderFieldMap['iconUrl']!: iconUrlFieldValue,
      if (slackTeamId != _sentinel)
        _$SlackSenderFieldMap['slackTeamId']!: slackTeamId as String,
      if (slackTeamIdFieldValue != null)
        _$SlackSenderFieldMap['slackTeamId']!: slackTeamIdFieldValue,
      if (slackTeamDomain != _sentinel)
        _$SlackSenderFieldMap['slackTeamDomain']!: slackTeamDomain as String,
      if (slackTeamDomainFieldValue != null)
        _$SlackSenderFieldMap['slackTeamDomain']!: slackTeamDomainFieldValue,
      if (slackTeamIconUrl != _sentinel)
        _$SlackSenderFieldMap['slackTeamIconUrl']!: slackTeamIconUrl as String?,
      if (slackTeamIconUrlFieldValue != null)
        _$SlackSenderFieldMap['slackTeamIconUrl']!: slackTeamIconUrlFieldValue,
      if (slackTeamName != _sentinel)
        _$SlackSenderFieldMap['slackTeamName']!: slackTeamName as String,
      if (slackTeamNameFieldValue != null)
        _$SlackSenderFieldMap['slackTeamName']!: slackTeamNameFieldValue,
      if (createdAt != _sentinel)
        _$SlackSenderFieldMap['createdAt']!: createdAt as Timestamp,
      if (createdAtFieldValue != null)
        _$SlackSenderFieldMap['createdAt']!: createdAtFieldValue,
      if (lastUpdatedAt != _sentinel)
        _$SlackSenderFieldMap['lastUpdatedAt']!: lastUpdatedAt as Timestamp,
      if (lastUpdatedAtFieldValue != null)
        _$SlackSenderFieldMap['lastUpdatedAt']!: lastUpdatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? id = _sentinel,
    FieldValue? idFieldValue,
    Object? senderId = _sentinel,
    FieldValue? senderIdFieldValue,
    Object? senderName = _sentinel,
    FieldValue? senderNameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? iconUrl = _sentinel,
    FieldValue? iconUrlFieldValue,
    Object? slackTeamId = _sentinel,
    FieldValue? slackTeamIdFieldValue,
    Object? slackTeamDomain = _sentinel,
    FieldValue? slackTeamDomainFieldValue,
    Object? slackTeamIconUrl = _sentinel,
    FieldValue? slackTeamIconUrlFieldValue,
    Object? slackTeamName = _sentinel,
    FieldValue? slackTeamNameFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? lastUpdatedAt = _sentinel,
    FieldValue? lastUpdatedAtFieldValue,
  }) {
    assert(
      id == _sentinel || idFieldValue == null,
      "Cannot specify both id and idFieldValue",
    );
    assert(
      senderId == _sentinel || senderIdFieldValue == null,
      "Cannot specify both senderId and senderIdFieldValue",
    );
    assert(
      senderName == _sentinel || senderNameFieldValue == null,
      "Cannot specify both senderName and senderNameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      iconUrl == _sentinel || iconUrlFieldValue == null,
      "Cannot specify both iconUrl and iconUrlFieldValue",
    );
    assert(
      slackTeamId == _sentinel || slackTeamIdFieldValue == null,
      "Cannot specify both slackTeamId and slackTeamIdFieldValue",
    );
    assert(
      slackTeamDomain == _sentinel || slackTeamDomainFieldValue == null,
      "Cannot specify both slackTeamDomain and slackTeamDomainFieldValue",
    );
    assert(
      slackTeamIconUrl == _sentinel || slackTeamIconUrlFieldValue == null,
      "Cannot specify both slackTeamIconUrl and slackTeamIconUrlFieldValue",
    );
    assert(
      slackTeamName == _sentinel || slackTeamNameFieldValue == null,
      "Cannot specify both slackTeamName and slackTeamNameFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      lastUpdatedAt == _sentinel || lastUpdatedAtFieldValue == null,
      "Cannot specify both lastUpdatedAt and lastUpdatedAtFieldValue",
    );
    final json = {
      if (id != _sentinel) _$SlackSenderFieldMap['id']!: id as String,
      if (idFieldValue != null) _$SlackSenderFieldMap['id']!: idFieldValue,
      if (senderId != _sentinel)
        _$SlackSenderFieldMap['senderId']!: senderId as String,
      if (senderIdFieldValue != null)
        _$SlackSenderFieldMap['senderId']!: senderIdFieldValue,
      if (senderName != _sentinel)
        _$SlackSenderFieldMap['senderName']!: senderName as String,
      if (senderNameFieldValue != null)
        _$SlackSenderFieldMap['senderName']!: senderNameFieldValue,
      if (description != _sentinel)
        _$SlackSenderFieldMap['description']!: description as String,
      if (descriptionFieldValue != null)
        _$SlackSenderFieldMap['description']!: descriptionFieldValue,
      if (iconUrl != _sentinel)
        _$SlackSenderFieldMap['iconUrl']!: iconUrl as String?,
      if (iconUrlFieldValue != null)
        _$SlackSenderFieldMap['iconUrl']!: iconUrlFieldValue,
      if (slackTeamId != _sentinel)
        _$SlackSenderFieldMap['slackTeamId']!: slackTeamId as String,
      if (slackTeamIdFieldValue != null)
        _$SlackSenderFieldMap['slackTeamId']!: slackTeamIdFieldValue,
      if (slackTeamDomain != _sentinel)
        _$SlackSenderFieldMap['slackTeamDomain']!: slackTeamDomain as String,
      if (slackTeamDomainFieldValue != null)
        _$SlackSenderFieldMap['slackTeamDomain']!: slackTeamDomainFieldValue,
      if (slackTeamIconUrl != _sentinel)
        _$SlackSenderFieldMap['slackTeamIconUrl']!: slackTeamIconUrl as String?,
      if (slackTeamIconUrlFieldValue != null)
        _$SlackSenderFieldMap['slackTeamIconUrl']!: slackTeamIconUrlFieldValue,
      if (slackTeamName != _sentinel)
        _$SlackSenderFieldMap['slackTeamName']!: slackTeamName as String,
      if (slackTeamNameFieldValue != null)
        _$SlackSenderFieldMap['slackTeamName']!: slackTeamNameFieldValue,
      if (createdAt != _sentinel)
        _$SlackSenderFieldMap['createdAt']!: createdAt as Timestamp,
      if (createdAtFieldValue != null)
        _$SlackSenderFieldMap['createdAt']!: createdAtFieldValue,
      if (lastUpdatedAt != _sentinel)
        _$SlackSenderFieldMap['lastUpdatedAt']!: lastUpdatedAt as Timestamp,
      if (lastUpdatedAtFieldValue != null)
        _$SlackSenderFieldMap['lastUpdatedAt']!: lastUpdatedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is SlackSenderDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class SlackSenderQuery
    implements QueryReference<SlackSender, SlackSenderQuerySnapshot> {
  @override
  SlackSenderQuery limit(int limit);

  @override
  SlackSenderQuery limitToLast(int limit);

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  SlackSenderQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt,
    Object? startAfter,
    Object? endAt,
    Object? endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  SlackSenderQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  SlackSenderQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackSenderQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackSenderQuery whereSenderId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackSenderQuery whereSenderName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackSenderQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackSenderQuery whereIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  SlackSenderQuery whereSlackTeamId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackSenderQuery whereSlackTeamDomain({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackSenderQuery whereSlackTeamIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  });
  SlackSenderQuery whereSlackTeamName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  SlackSenderQuery whereCreatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });
  SlackSenderQuery whereLastUpdatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  });

  SlackSenderQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });

  SlackSenderQuery orderById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });

  SlackSenderQuery orderBySenderId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });

  SlackSenderQuery orderBySenderName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });

  SlackSenderQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });

  SlackSenderQuery orderByIconUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });

  SlackSenderQuery orderBySlackTeamId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });

  SlackSenderQuery orderBySlackTeamDomain({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });

  SlackSenderQuery orderBySlackTeamIconUrl({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });

  SlackSenderQuery orderBySlackTeamName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });

  SlackSenderQuery orderByCreatedAt({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });

  SlackSenderQuery orderByLastUpdatedAt({
    bool descending = false,
    Timestamp startAt,
    Timestamp startAfter,
    Timestamp endAt,
    Timestamp endBefore,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  });
}

class _$SlackSenderQuery
    extends QueryReference<SlackSender, SlackSenderQuerySnapshot>
    implements SlackSenderQuery {
  _$SlackSenderQuery(
    this._collection, {
    required Query<SlackSender> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<SlackSenderQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(SlackSenderQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<SlackSenderQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(SlackSenderQuerySnapshot._fromQuerySnapshot);
  }

  @override
  SlackSenderQuery limit(int limit) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  SlackSenderQuery limitToLast(int limit) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery orderByFieldPath(
    FieldPath fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackSenderQuery whereFieldPath(
    FieldPath fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery whereId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackSenderFieldMap['id']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery whereSenderId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackSenderFieldMap['senderId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery whereSenderName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackSenderFieldMap['senderName']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackSenderFieldMap['description']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery whereIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackSenderFieldMap['iconUrl']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery whereSlackTeamId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackSenderFieldMap['slackTeamId']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery whereSlackTeamDomain({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackSenderFieldMap['slackTeamDomain']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery whereSlackTeamIconUrl({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackSenderFieldMap['slackTeamIconUrl']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery whereSlackTeamName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackSenderFieldMap['slackTeamName']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery whereCreatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackSenderFieldMap['createdAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery whereLastUpdatedAt({
    Timestamp? isEqualTo,
    Timestamp? isNotEqualTo,
    Timestamp? isLessThan,
    Timestamp? isLessThanOrEqualTo,
    Timestamp? isGreaterThan,
    Timestamp? isGreaterThanOrEqualTo,
    bool? isNull,
    List<Timestamp>? whereIn,
    List<Timestamp>? whereNotIn,
  }) {
    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$SlackSenderFieldMap['lastUpdatedAt']!,
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      $queryCursor: $queryCursor,
    );
  }

  SlackSenderQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackSenderQuery orderById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$SlackSenderFieldMap['id']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackSenderQuery orderBySenderId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackSenderFieldMap['senderId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackSenderQuery orderBySenderName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackSenderFieldMap['senderName']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackSenderQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackSenderFieldMap['description']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackSenderQuery orderByIconUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackSenderFieldMap['iconUrl']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackSenderQuery orderBySlackTeamId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackSenderFieldMap['slackTeamId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackSenderQuery orderBySlackTeamDomain({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackSenderFieldMap['slackTeamDomain']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackSenderQuery orderBySlackTeamIconUrl({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackSenderFieldMap['slackTeamIconUrl']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackSenderQuery orderBySlackTeamName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackSenderFieldMap['slackTeamName']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackSenderQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$SlackSenderFieldMap['createdAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  SlackSenderQuery orderByLastUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    SlackSenderDocumentSnapshot? startAtDocument,
    SlackSenderDocumentSnapshot? endAtDocument,
    SlackSenderDocumentSnapshot? endBeforeDocument,
    SlackSenderDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$SlackSenderFieldMap['lastUpdatedAt']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$SlackSenderQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$SlackSenderQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class SlackSenderDocumentSnapshot
    extends FirestoreDocumentSnapshot<SlackSender> {
  SlackSenderDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<SlackSender> snapshot;

  @override
  SlackSenderDocumentReference get reference {
    return SlackSenderDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final SlackSender? data;
}

class SlackSenderQuerySnapshot extends FirestoreQuerySnapshot<SlackSender,
    SlackSenderQueryDocumentSnapshot> {
  SlackSenderQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory SlackSenderQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<SlackSender> snapshot,
  ) {
    final docs = snapshot.docs.map(SlackSenderQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        SlackSenderDocumentSnapshot._,
      );
    }).toList();

    return SlackSenderQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<SlackSenderDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    SlackSenderDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<SlackSenderDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<SlackSender> snapshot;

  @override
  final List<SlackSenderQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<SlackSenderDocumentSnapshot>> docChanges;
}

class SlackSenderQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<SlackSender>
    implements SlackSenderDocumentSnapshot {
  SlackSenderQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<SlackSender> snapshot;

  @override
  final SlackSender data;

  @override
  SlackSenderDocumentReference get reference {
    return SlackSenderDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      createdAt: const FirestoreTimestampConverter()
          .fromJson(json['created_at'] as Timestamp),
      lastUpdatedAt: const FirestoreTimestampConverter()
          .fromJson(json['last_updated_at'] as Timestamp),
      email: json['email'] as String?,
    );

const _$UserFieldMap = <String, String>{
  'id': 'id',
  'email': 'email',
  'createdAt': 'created_at',
  'lastUpdatedAt': 'last_updated_at',
};

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'created_at':
          const FirestoreTimestampConverter().toJson(instance.createdAt),
      'last_updated_at':
          const FirestoreTimestampConverter().toJson(instance.lastUpdatedAt),
    };

SlackUser _$SlackUserFromJson(Map<String, dynamic> json) => SlackUser(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      slackTeamId: json['slack_team_id'] as String,
      slackTeamAvatarBaseUrl: json['slack_team_avatar_base_url'] as String?,
      slackTeamDiscoverable: json['slack_team_discoverable'] as String?,
      slackTeamDomain: json['slack_team_domain'] as String,
      slackTeamIconUrl: json['slack_team_icon_url'] as String?,
      slackTeamName: json['slack_team_name'] as String,
      language: json['language'] as String,
      createdAt: const FirestoreTimestampConverter()
          .fromJson(json['created_at'] as Timestamp),
      lastUpdatedAt: const FirestoreTimestampConverter()
          .fromJson(json['last_updated_at'] as Timestamp),
    );

const _$SlackUserFieldMap = <String, String>{
  'id': 'id',
  'userId': 'user_id',
  'slackTeamId': 'slack_team_id',
  'slackTeamAvatarBaseUrl': 'slack_team_avatar_base_url',
  'slackTeamDiscoverable': 'slack_team_discoverable',
  'slackTeamDomain': 'slack_team_domain',
  'slackTeamIconUrl': 'slack_team_icon_url',
  'slackTeamName': 'slack_team_name',
  'language': 'language',
  'createdAt': 'created_at',
  'lastUpdatedAt': 'last_updated_at',
};

Map<String, dynamic> _$SlackUserToJson(SlackUser instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'slack_team_id': instance.slackTeamId,
      'slack_team_avatar_base_url': instance.slackTeamAvatarBaseUrl,
      'slack_team_discoverable': instance.slackTeamDiscoverable,
      'slack_team_domain': instance.slackTeamDomain,
      'slack_team_icon_url': instance.slackTeamIconUrl,
      'slack_team_name': instance.slackTeamName,
      'language': instance.language,
      'created_at':
          const FirestoreTimestampConverter().toJson(instance.createdAt),
      'last_updated_at':
          const FirestoreTimestampConverter().toJson(instance.lastUpdatedAt),
    };

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      type: json['type'] as String,
      message: json['message'] as String,
      summary: json['summary'] as String,
      botMessage: json['bot_message'] as String,
      reply: json['reply'] as String,
      senderId: json['sender_id'] as String,
      senderName: json['sender_name'] as String,
      senderIconUrl: json['sender_icon_url'] as String?,
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      fileAttached: json['file_attached'] as bool,
      replied: json['replied'] as bool,
      archived: json['archived'] as bool,
      read: json['read'] as bool,
      positiveReply: json['positive_reply'] as String,
      negativeReply: json['negative_reply'] as String,
      isScheduleAdjustment: json['is_schedule_adjustment'] as bool,
      createdAt: const FirestoreTimestampConverter()
          .fromJson(json['created_at'] as Timestamp),
      lastUpdatedAt: const FirestoreTimestampConverter()
          .fromJson(json['last_updated_at'] as Timestamp),
    );

const _$MessageFieldMap = <String, String>{
  'id': 'id',
  'userId': 'user_id',
  'type': 'type',
  'message': 'message',
  'summary': 'summary',
  'botMessage': 'bot_message',
  'reply': 'reply',
  'senderId': 'sender_id',
  'senderName': 'sender_name',
  'senderIconUrl': 'sender_icon_url',
  'imageUrls': 'image_urls',
  'fileAttached': 'file_attached',
  'replied': 'replied',
  'archived': 'archived',
  'read': 'read',
  'positiveReply': 'positive_reply',
  'negativeReply': 'negative_reply',
  'isScheduleAdjustment': 'is_schedule_adjustment',
  'createdAt': 'created_at',
  'lastUpdatedAt': 'last_updated_at',
};

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'type': instance.type,
      'message': instance.message,
      'summary': instance.summary,
      'bot_message': instance.botMessage,
      'reply': instance.reply,
      'sender_id': instance.senderId,
      'sender_name': instance.senderName,
      'sender_icon_url': instance.senderIconUrl,
      'image_urls': instance.imageUrls,
      'file_attached': instance.fileAttached,
      'replied': instance.replied,
      'archived': instance.archived,
      'read': instance.read,
      'positive_reply': instance.positiveReply,
      'negative_reply': instance.negativeReply,
      'is_schedule_adjustment': instance.isScheduleAdjustment,
      'created_at':
          const FirestoreTimestampConverter().toJson(instance.createdAt),
      'last_updated_at':
          const FirestoreTimestampConverter().toJson(instance.lastUpdatedAt),
    };

SlackMessage _$SlackMessageFromJson(Map<String, dynamic> json) => SlackMessage(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      messageId: json['message_id'] as String,
      message: json['message'] as String,
      summary: json['summary'] as String,
      botMessage: json['bot_message'] as String,
      senderId: json['sender_id'] as String,
      senderName: json['sender_name'] as String,
      senderIconUrl: json['sender_icon_url'] as String?,
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      fileAttached: json['file_attached'] as bool,
      slackTeamId: json['slack_team_id'] as String,
      slackTeamDomain: json['slack_team_domain'] as String,
      slackTeamIconUrl: json['slack_team_icon_url'] as String?,
      slackTeamName: json['slack_team_name'] as String,
      slackUserId: json['slack_user_id'] as String,
      slackSenderUserId: json['slack_sender_user_id'] as String,
      slackChannelId: json['slack_channel_id'] as String,
      slackChannelName: json['slack_channel_name'] as String,
      slackTs: json['slack_ts'] as String,
      slackThreadTs: json['slack_thread_ts'] as String?,
      event: json['event'] as String,
      createdAt: const FirestoreTimestampConverter()
          .fromJson(json['created_at'] as Timestamp),
      lastUpdatedAt: const FirestoreTimestampConverter()
          .fromJson(json['last_updated_at'] as Timestamp),
    );

const _$SlackMessageFieldMap = <String, String>{
  'id': 'id',
  'userId': 'user_id',
  'messageId': 'message_id',
  'message': 'message',
  'summary': 'summary',
  'botMessage': 'bot_message',
  'senderId': 'sender_id',
  'senderName': 'sender_name',
  'senderIconUrl': 'sender_icon_url',
  'imageUrls': 'image_urls',
  'fileAttached': 'file_attached',
  'slackTeamId': 'slack_team_id',
  'slackTeamDomain': 'slack_team_domain',
  'slackTeamIconUrl': 'slack_team_icon_url',
  'slackTeamName': 'slack_team_name',
  'slackUserId': 'slack_user_id',
  'slackSenderUserId': 'slack_sender_user_id',
  'slackChannelId': 'slack_channel_id',
  'slackChannelName': 'slack_channel_name',
  'slackTs': 'slack_ts',
  'slackThreadTs': 'slack_thread_ts',
  'event': 'event',
  'createdAt': 'created_at',
  'lastUpdatedAt': 'last_updated_at',
};

Map<String, dynamic> _$SlackMessageToJson(SlackMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'message_id': instance.messageId,
      'message': instance.message,
      'summary': instance.summary,
      'bot_message': instance.botMessage,
      'sender_id': instance.senderId,
      'sender_name': instance.senderName,
      'sender_icon_url': instance.senderIconUrl,
      'image_urls': instance.imageUrls,
      'file_attached': instance.fileAttached,
      'slack_team_id': instance.slackTeamId,
      'slack_team_domain': instance.slackTeamDomain,
      'slack_team_icon_url': instance.slackTeamIconUrl,
      'slack_team_name': instance.slackTeamName,
      'slack_user_id': instance.slackUserId,
      'slack_sender_user_id': instance.slackSenderUserId,
      'slack_channel_id': instance.slackChannelId,
      'slack_channel_name': instance.slackChannelName,
      'slack_ts': instance.slackTs,
      'slack_thread_ts': instance.slackThreadTs,
      'event': instance.event,
      'created_at':
          const FirestoreTimestampConverter().toJson(instance.createdAt),
      'last_updated_at':
          const FirestoreTimestampConverter().toJson(instance.lastUpdatedAt),
    };

Sender _$SenderFromJson(Map<String, dynamic> json) => Sender(
      id: json['id'] as String,
      senderName: json['sender_name'] as String,
      iconUrl: json['icon_url'] as String?,
      description: json['description'] as String,
      type: json['type'] as String,
      groupIds:
          (json['group_ids'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: const FirestoreTimestampConverter()
          .fromJson(json['created_at'] as Timestamp),
      lastUpdatedAt: const FirestoreTimestampConverter()
          .fromJson(json['last_updated_at'] as Timestamp),
    );

const _$SenderFieldMap = <String, String>{
  'id': 'id',
  'senderName': 'sender_name',
  'description': 'description',
  'type': 'type',
  'groupIds': 'group_ids',
  'iconUrl': 'icon_url',
  'createdAt': 'created_at',
  'lastUpdatedAt': 'last_updated_at',
};

Map<String, dynamic> _$SenderToJson(Sender instance) => <String, dynamic>{
      'id': instance.id,
      'sender_name': instance.senderName,
      'description': instance.description,
      'type': instance.type,
      'group_ids': instance.groupIds,
      'icon_url': instance.iconUrl,
      'created_at':
          const FirestoreTimestampConverter().toJson(instance.createdAt),
      'last_updated_at':
          const FirestoreTimestampConverter().toJson(instance.lastUpdatedAt),
    };

SlackSender _$SlackSenderFromJson(Map<String, dynamic> json) => SlackSender(
      id: json['id'] as String,
      senderId: json['sender_id'] as String,
      senderName: json['sender_name'] as String,
      description: json['description'] as String,
      iconUrl: json['icon_url'] as String?,
      slackTeamId: json['slack_team_id'] as String,
      slackTeamDomain: json['slack_team_domain'] as String,
      slackTeamIconUrl: json['slack_team_icon_url'] as String?,
      slackTeamName: json['slack_team_name'] as String,
      createdAt: const FirestoreTimestampConverter()
          .fromJson(json['created_at'] as Timestamp),
      lastUpdatedAt: const FirestoreTimestampConverter()
          .fromJson(json['last_updated_at'] as Timestamp),
    );

const _$SlackSenderFieldMap = <String, String>{
  'id': 'id',
  'senderId': 'sender_id',
  'senderName': 'sender_name',
  'description': 'description',
  'iconUrl': 'icon_url',
  'slackTeamId': 'slack_team_id',
  'slackTeamDomain': 'slack_team_domain',
  'slackTeamIconUrl': 'slack_team_icon_url',
  'slackTeamName': 'slack_team_name',
  'createdAt': 'created_at',
  'lastUpdatedAt': 'last_updated_at',
};

Map<String, dynamic> _$SlackSenderToJson(SlackSender instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sender_id': instance.senderId,
      'sender_name': instance.senderName,
      'description': instance.description,
      'icon_url': instance.iconUrl,
      'slack_team_id': instance.slackTeamId,
      'slack_team_domain': instance.slackTeamDomain,
      'slack_team_icon_url': instance.slackTeamIconUrl,
      'slack_team_name': instance.slackTeamName,
      'created_at':
          const FirestoreTimestampConverter().toJson(instance.createdAt),
      'last_updated_at':
          const FirestoreTimestampConverter().toJson(instance.lastUpdatedAt),
    };
