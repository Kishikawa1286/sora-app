import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sora/utils/firestore_serializable.dart';

// The subcollection type cannot be a different file due to technical constraints

part 'users_collection.g.dart';

@FirestoreSerializable
class User {
  const User({
    required this.id,
    required this.createdAt,
    required this.lastUpdatedAt,
    this.email,
  });

  final String id;
  final String? email;
  @JsonKey(name: 'created_at')
  final Timestamp createdAt;
  @JsonKey(name: 'last_updated_at')
  final Timestamp lastUpdatedAt;
}

const usersCollection = Collection<User>('users_v1');

@FirestoreSerializable
class SlackUser {
  const SlackUser({
    required this.id,
    required this.userId,
    required this.slack_team_id,
    required this.createdAt,
    required this.lastUpdatedAt,
  });

  final String id;
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'slack_team_id')
  final String slack_team_id;
  @JsonKey(name: 'created_at')
  final Timestamp createdAt;
  @JsonKey(name: 'last_updated_at')
  final Timestamp lastUpdatedAt;
}

const slackUsersCollection = Collection<SlackUser>('users_v1/*/slack_users_v1');

@FirestoreSerializable
class Message {
  const Message({
    required this.id,
    required this.userId,
    required this.type,
    required this.message,
    required this.summary,
    required this.botMessage,
    required this.reply,
    required this.senderId,
    required this.senderName,
    required this.senderIconUrl,
    required this.imageUrls,
    required this.fileAttached,
    required this.replied,
    required this.archived,
    required this.read,
    required this.createdAt,
    required this.lastUpdatedAt,
  });

  final String id;
  @JsonKey(name: 'user_id')
  final String userId;
  final String type;
  final String message;
  final String summary;
  @JsonKey(name: 'bot_message')
  final String botMessage;
  final String reply;
  @JsonKey(name: 'sender_id')
  final String senderId;
  @JsonKey(name: 'sender_name')
  final String senderName;
  @JsonKey(name: 'sender_icon_url')
  final String senderIconUrl;
  @JsonKey(name: 'image_urls')
  final List<String> imageUrls;
  @JsonKey(name: 'file_attached')
  final bool fileAttached;
  final bool replied;
  final bool archived;
  final bool read;
  @JsonKey(name: 'created_at')
  final Timestamp createdAt;
  @JsonKey(name: 'last_updated_at')
  final Timestamp lastUpdatedAt;
}

const messagesCollection = Collection<Message>('users_v1/*/messages_v1');

@FirestoreSerializable
class SlackMessage {
  const SlackMessage({
    required this.id,
    required this.userId,
    required this.messageId,
    required this.message,
    required this.summary,
    required this.botMessage,
    required this.senderId,
    required this.senderName,
    required this.senderIconUrl,
    required this.imageUrls,
    required this.fileAttached,
    required this.slackTeamId,
    required this.slackUserId,
    required this.slackSenderUserId,
    required this.slackChannelId,
    required this.slackChannelName,
    required this.slackThreadTs,
    required this.createdAt,
    required this.lastUpdatedAt,
  });

  final String id;
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'message_id')
  final String messageId;
  final String message;
  final String summary;
  @JsonKey(name: 'bot_message')
  final String botMessage;
  @JsonKey(name: 'sender_id')
  final String senderId;
  @JsonKey(name: 'sender_name')
  final String senderName;
  @JsonKey(name: 'sender_icon_url')
  final String senderIconUrl;
  @JsonKey(name: 'image_urls')
  final List<String> imageUrls;
  @JsonKey(name: 'file_attached')
  final bool fileAttached;
  @JsonKey(name: 'slack_team_id')
  final String slackTeamId;
  @JsonKey(name: 'slack_user_id')
  final String slackUserId;
  @JsonKey(name: 'slack_sender_user_id')
  final String slackSenderUserId;
  @JsonKey(name: 'slack_channel_id')
  final String slackChannelId;
  @JsonKey(name: 'slack_channel_name')
  final String slackChannelName;
  @JsonKey(name: 'slack_thread_ts')
  final String slackThreadTs;
  @JsonKey(name: 'created_at')
  final Timestamp createdAt;
  @JsonKey(name: 'last_updated_at')
  final Timestamp lastUpdatedAt;
}

const slackMessagesCollection =
    Collection<SlackMessage>('users_v1/*/messages_v1/*/slack_messages_v1');

@FirestoreSerializable
class Sender {
  const Sender({
    required this.id,
    required this.sender_name,
    required this.icon_url,
    required this.description,
    required this.type,
    required this.group_ids,
    required this.createdAt,
    required this.lastUpdatedAt,
  });

  final String id;
  final String sender_name;
  final String icon_url;
  final String description;
  final String type;
  final List<String> group_ids;
  @JsonKey(name: 'created_at')
  final Timestamp createdAt;
  @JsonKey(name: 'last_updated_at')
  final Timestamp lastUpdatedAt;
}

const sendersCollection = Collection<Sender>('users_v1/*/senders_v1');

@FirestoreSerializable
class SlackSender {
  const SlackSender({
    required this.id,
    required this.senderId,
    required this.senderName,
    required this.slackTeamId,
    required this.slackEmail,
    required this.createdAt,
    required this.lastUpdatedAt,
  });

  final String id;
  @JsonKey(name: 'sender_id')
  final String senderId;
  @JsonKey(name: 'sender_name')
  final String senderName;
  @JsonKey(name: 'slack_team_id')
  final String slackTeamId;
  @JsonKey(name: 'slack_email')
  final String slackEmail;
  @JsonKey(name: 'created_at')
  final Timestamp createdAt;
  @JsonKey(name: 'last_updated_at')
  final Timestamp lastUpdatedAt;
}

const slackSendersCollection =
    Collection<SlackSender>('users_v1/*/senders_v1/*/slack_senders_v1');

@usersCollection
@slackUsersCollection
@messagesCollection
@slackMessagesCollection
@sendersCollection
@slackSendersCollection
final usersCollectionRef = UserCollectionReference();

UserDocumentReference userDocRef(String userId) =>
    usersCollectionRef.doc(userId);

SlackUserCollectionReference slackUsersCollectionRef(String userId) =>
    userDocRef(userId).slackUsersV1;

SlackUserDocumentReference slackUserDocRef(
  String userId,
  String slackUserId,
) =>
    slackUsersCollectionRef(userId).doc(slackUserId);

MessageCollectionReference messagesCollectionRef(String userId) =>
    userDocRef(userId).messagesV1;

MessageDocumentReference messageDocRef(
  String userId,
  String messageId,
) =>
    messagesCollectionRef(userId).doc(messageId);

SlackMessageCollectionReference slackMessagesCollectionRef(
  String userId,
  String messageId,
) =>
    messageDocRef(userId, messageId).slackMessagesV1;

SlackMessageDocumentReference slackMessageDocRef(
  String userId,
  String messageId,
  String slackMessageId,
) =>
    slackMessagesCollectionRef(userId, messageId).doc(slackMessageId);

SenderCollectionReference sendersCollectionRef(String userId) =>
    userDocRef(userId).sendersV1;

SenderDocumentReference senderDocRef(
  String userId,
  String senderId,
) =>
    sendersCollectionRef(userId).doc(senderId);

SlackSenderCollectionReference slackSendersCollectionRef(
  String userId,
  String senderId,
) =>
    senderDocRef(userId, senderId).slackSendersV1;

SlackSenderDocumentReference slackSenderDocRef(
  String userId,
  String senderId,
  String slackSenderId,
) =>
    slackSendersCollectionRef(userId, senderId).doc(slackSenderId);
