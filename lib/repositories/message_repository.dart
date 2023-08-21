import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/helpers/firestore_helper.dart';
import 'package:sora/repositories/entities/users_collection.dart';

abstract class MessageRepositoryBase {
  Stream<List<Message?>> fetchMessages(
    String userId, {
    Timestamp? startAfter,
    int limit = 20,
  });

  Stream<List<Message?>> fetchMessagesWithoutReply(
    String userId, {
    Timestamp? startAfter,
    int limit = 20,
  });

  Stream<Sender?> fetchSender(String userId, String senderId);

  Stream<SlackSender?> fetchSlackSender(String userId, String senderId);
}

final messageRepositoryProvider = Provider<MessageRepository>(
  (ref) => MessageRepository(
    ref.read(firestoreHelperProvider),
  ),
);

class MessageRepository implements MessageRepositoryBase {
  const MessageRepository(this._firestoreHelper);

  final FirestoreHelper _firestoreHelper;

  @override
  Stream<List<Message?>> fetchMessages(
    String userId, {
    Timestamp? startAfter,
    int limit = 20,
  }) =>
      _firestoreHelper.queryStream(
        messagesCollectionRef(userId).limit(limit).orderByCreatedAt(
              descending: true,
              startAfter: startAfter ?? Timestamp.now(),
            ),
      );

  @override
  Stream<List<Message?>> fetchMessagesWithoutReply(
    String userId, {
    Timestamp? startAfter,
    int limit = 20,
  }) =>
      _firestoreHelper.queryStream(
        messagesCollectionRef(userId)
            .whereReply(isEqualTo: '')
            .limit(limit)
            .orderByCreatedAt(
              descending: true,
              startAfter: startAfter ?? Timestamp.now(),
            ),
      );

  @override
  Stream<Sender?> fetchSender(String userId, String senderId) =>
      _firestoreHelper.documentStream(senderDocRef(userId, senderId));

  @override
  Stream<SlackSender?> fetchSlackSender(String userId, String senderId) =>
      _firestoreHelper
          .queryStream(slackSendersCollectionRef(userId, senderId))
          // SlackSender is unique for each Sender
          .map((list) => list.isNotEmpty ? list.first : null);
}
