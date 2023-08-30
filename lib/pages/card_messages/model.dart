import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sora/repositories/entities/users_collection.dart';

part 'model.freezed.dart';

@freezed
abstract class CardMessagesPageModel with _$CardMessagesPageModel {
  const factory CardMessagesPageModel({
    String? userId,
    @Default([]) List<Message?> messages,
    Timestamp? lastMessageCreatedAt,
    @Default([]) List<String> dismissedMessageIds,
  }) = _CardMessagesPageModel;
}
