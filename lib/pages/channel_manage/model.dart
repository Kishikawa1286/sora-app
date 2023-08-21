import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sora/repositories/entities/users_collection.dart';

part 'model.freezed.dart';

@freezed
abstract class ChannelManagePageModel with _$ChannelManagePageModel {
  const factory ChannelManagePageModel({
    @Default([]) List<SlackUser?> slackUsers,
  }) = _ChannelManagePageModel;
}
