import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class HomeBackgroundColorModel with _$HomeBackgroundColorModel {
  const factory HomeBackgroundColorModel({
    @Default(0) double offset,
    @Default(Colors.white) Color backgroundColor,
  }) = _HomeBackgroundColorModel;
}
