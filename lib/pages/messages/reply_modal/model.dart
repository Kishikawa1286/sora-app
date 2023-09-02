import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class ReplyModalModel with _$ReplyModalModel {
  const factory ReplyModalModel({
    @Default('') String messageId,
    @Default('') String text,
  }) = _ReplyModalModel;
}
