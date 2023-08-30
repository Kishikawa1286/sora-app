import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class HomeTabModel with _$HomeTabModel {
  const factory HomeTabModel({
    @Default(0) int tab,
    @Default(false) bool isLoading,
    int? pendingTab,
  }) = _HomeTabModel;
}
