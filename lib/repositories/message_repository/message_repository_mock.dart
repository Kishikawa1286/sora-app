import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/repositories/message_repository/message_repository.dart';

class MessageRepositoryMock extends MessageRepositoryBase {
  @override
  Stream<List<Message?>> fetchMessages(
    String userId, {
    Timestamp? startAfter,
    int limit = 20,
  }) =>
      Stream.value([]);

  @override
  Stream<List<Message?>> fetchMessagesWithoutReply(
    String userId, {
    Timestamp? startAfter,
    int limit = 20,
  }) =>
      Stream.value([]);

  @override
  Stream<Sender?> fetchSender(String userId, String senderId) =>
      Stream.value(null);

  @override
  Stream<SlackSender?> fetchSlackSender(String userId, String senderId) =>
      Stream.value(null);
}
