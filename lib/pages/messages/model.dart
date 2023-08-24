import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sora/repositories/entities/users_collection.dart';

part 'model.freezed.dart';

@freezed
abstract class MessagesPageModel with _$MessagesPageModel {
  const factory MessagesPageModel({
    String? userId,
    @Default([]) List<Message?> messages,
    Timestamp? lastMessageCreatedAt,
    Message? modalMessage,
    @Default([]) List<String> dismissedMessageIds,
  }) = _MessagesPageModel;
}
