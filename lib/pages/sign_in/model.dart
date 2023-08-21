import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class SignInPageModel with _$SignInPageModel {
  const factory SignInPageModel({
    @Default('') String email,
    @Default('') String password,
    @Default('') String errorMessage,
    @Default(false) bool authenticated,
  }) = _SignInPageModel;
}
