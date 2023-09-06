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
    required this.slackTeamId,
    required this.slackTeamAvatarBaseUrl,
    required this.slackTeamDiscoverable,
    required this.slackTeamDomain,
    required this.slackTeamIconUrl,
    required this.slackTeamName,
    required this.language,
    required this.createdAt,
    required this.lastUpdatedAt,
  });

  final String id;
  @JsonKey(name: 'user_id')
  final String userId;
  @JsonKey(name: 'slack_team_id')
  final String slackTeamId;
  @JsonKey(name: 'slack_team_avatar_base_url')
  final String? slackTeamAvatarBaseUrl;
  @JsonKey(name: 'slack_team_discoverable')
  final String? slackTeamDiscoverable;
  @JsonKey(name: 'slack_team_domain')
  final String slackTeamDomain;
  @JsonKey(name: 'slack_team_icon_url')
  final String? slackTeamIconUrl;
  @JsonKey(name: 'slack_team_name')
  final String slackTeamName;
  final String language;
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
    required this.positiveReply,
    required this.negativeReply,
    required this.isScheduleAdjustment,
    required this.redirectUrl,
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
  final String? senderIconUrl;
  @JsonKey(name: 'image_urls')
  final List<String> imageUrls;
  @JsonKey(name: 'file_attached')
  final bool fileAttached;
  final bool replied;
  final bool archived;
  final bool read;
  @JsonKey(name: 'positive_reply')
  final String positiveReply;
  @JsonKey(name: 'negative_reply')
  final String negativeReply;
  @JsonKey(name: 'is_schedule_adjustment')
  final bool isScheduleAdjustment;
  @JsonKey(name: 'redirect_url')
  final String? redirectUrl;
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
    required this.slackTeamDomain,
    required this.slackTeamIconUrl,
    required this.slackTeamName,
    required this.slackUserId,
    required this.slackSenderUserId,
    required this.slackChannelId,
    required this.slackChannelName,
    required this.slackTs,
    required this.slackThreadTs,
    required this.event,
    required this.redirectUrl,
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
  final String? senderIconUrl;
  @JsonKey(name: 'image_urls')
  final List<String> imageUrls;
  @JsonKey(name: 'file_attached')
  final bool fileAttached;
  @JsonKey(name: 'slack_team_id')
  final String slackTeamId;
  @JsonKey(name: 'slack_team_domain')
  final String slackTeamDomain;
  @JsonKey(name: 'slack_team_icon_url')
  final String? slackTeamIconUrl;
  @JsonKey(name: 'slack_team_name')
  final String slackTeamName;
  @JsonKey(name: 'slack_user_id')
  final String slackUserId;
  @JsonKey(name: 'slack_sender_user_id')
  final String slackSenderUserId;
  @JsonKey(name: 'slack_channel_id')
  final String slackChannelId;
  @JsonKey(name: 'slack_channel_name')
  final String slackChannelName;
  @JsonKey(name: 'slack_ts')
  final String slackTs;
  @JsonKey(name: 'slack_thread_ts')
  final String? slackThreadTs;
  @JsonKey(name: 'event')
  final String event;
  @JsonKey(name: 'redirect_url')
  final String? redirectUrl;
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
    required this.senderName,
    required this.iconUrl,
    required this.description,
    required this.type,
    required this.groupIds,
    required this.createdAt,
    required this.lastUpdatedAt,
  });

  final String id;
  @JsonKey(name: 'sender_name')
  final String senderName;
  final String description;
  final String type;
  @JsonKey(name: 'group_ids')
  final List<String> groupIds;
  @JsonKey(name: 'icon_url')
  final String? iconUrl;
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
    required this.description,
    required this.iconUrl,
    required this.slackTeamId,
    required this.slackTeamDomain,
    required this.slackTeamIconUrl,
    required this.slackTeamName,
    required this.createdAt,
    required this.lastUpdatedAt,
  });

  final String id;
  @JsonKey(name: 'sender_id')
  final String senderId;
  @JsonKey(name: 'sender_name')
  final String senderName;
  final String description;
  @JsonKey(name: 'icon_url')
  final String? iconUrl;
  @JsonKey(name: 'slack_team_id')
  final String slackTeamId;
  @JsonKey(name: 'slack_team_domain')
  final String slackTeamDomain;
  @JsonKey(name: 'slack_team_icon_url')
  final String? slackTeamIconUrl;
  @JsonKey(name: 'slack_team_name')
  final String slackTeamName;
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
