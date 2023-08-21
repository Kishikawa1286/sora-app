import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class AuthBuilderModel with _$AuthBuilderModel {
  const factory AuthBuilderModel({@Default(null) bool? authenticated}) =
      _AuthBuilderModel;
}
