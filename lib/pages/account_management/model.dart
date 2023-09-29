import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sora/repositories/entities/users_collection.dart';

part 'model.freezed.dart';

@freezed
abstract class AccountManagementPageModel with _$AccountManagementPageModel {
  const factory AccountManagementPageModel({
    @Default([]) List<SlackUser?> slackUsers,
  }) = _AccountManagementPageModel;
}
