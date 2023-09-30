import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sora/repositories/entities/users_collection.dart';

part 'model.freezed.dart';

@freezed
abstract class MessageDetailPageModel with _$MessageDetailPageModel {
  const factory MessageDetailPageModel({
    String? userId,
    String? messageId,
    @Default(null) Message? message,
    @Default(null) SlackMessage? slackMessage,
    @Default('') String replyText,
    @Default(false) bool selectingReplyType,
    @Default(false) bool editingReplyText,
    @Default(false) bool soraShown,
  }) = _MessageDetailPageModel;
}
