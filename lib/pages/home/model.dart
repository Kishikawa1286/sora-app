import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  const factory HomeModel({
    @Default(0) int currentTab,
  }) = _HomeModel;
}
