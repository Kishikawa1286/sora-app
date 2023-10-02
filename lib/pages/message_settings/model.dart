import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class MessageSettingsPageModel with _$MessageSettingsPageModel {
  const factory MessageSettingsPageModel({
    @Default('') String scheduleAdjustmentUrl,
  }) = _MessageSettingsPageModel;
}
