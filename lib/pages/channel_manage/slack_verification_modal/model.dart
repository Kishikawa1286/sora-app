import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class SlackVerificationModalModel with _$SlackVerificationModalModel {
  const factory SlackVerificationModalModel({
    @Default('') String slackVerificationCode,
  }) = _SlackVerificationModalModel;
}
