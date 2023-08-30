import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/services/home_background_color/model.dart';

final targetColorRightProvider = Provider((_) => Colors.orange);
final targetColorLeftProvider = Provider((_) => Colors.blue);

final homeBackgroundColorServiceProvider =
    StateNotifierProvider<HomeBackgroundColorService, HomeBackgroundColorModel>(
  (ref) => HomeBackgroundColorService(
    ref.watch(targetColorRightProvider),
    ref.watch(targetColorLeftProvider),
  ),
  dependencies: [
    targetColorRightProvider,
    targetColorLeftProvider,
  ],
);

class HomeBackgroundColorService
    extends StateNotifier<HomeBackgroundColorModel> {
  HomeBackgroundColorService(
    this._targetColorRight,
    this._targetColorLeft,
  ) : super(const HomeBackgroundColorModel());

  static const _maxOffset = 200;
  static const _defaultColor = Colors.white;
  final Color _targetColorRight;
  final Color _targetColorLeft;

  void update(double delta) {
    final newOffset = state.offset + delta;
    state = state.copyWith(
      offset: newOffset,
      backgroundColor: _calculateBackgroundColor(newOffset),
    );
  }

  void reset() {
    state = state.copyWith(offset: 0, backgroundColor: Colors.white);
  }

  int _lerpValue(int start, int end, double fraction) =>
      (start + (end - start) * fraction).toInt();

  Color _calculateBackgroundColor(double offset) {
    // normalizedOffsetは-1.0から1.0の範囲
    // -1.0は完全に_leftの色、1.0は完全に_rightの色
    // 0は_defaultColor
    final normalizedOffset = (offset / _maxOffset).clamp(-1.0, 1.0);

    // normalizedOffsetが正の場合、_defaultColorと_targetColorRightの間の色を計算
    if (normalizedOffset > 0) {
      final red = _lerpValue(
        _defaultColor.red,
        _targetColorRight.red,
        normalizedOffset,
      );
      final green = _lerpValue(
        _defaultColor.green,
        _targetColorRight.green,
        normalizedOffset,
      );
      final blue = _lerpValue(
        _defaultColor.blue,
        _targetColorRight.blue,
        normalizedOffset,
      );
      return Color.fromRGBO(red, green, blue, 1);
    }

    // normalizedOffsetが負の場合、_defaultColorと_targetColorLeftの間の色を計算
    if (normalizedOffset < 0) {
      final red = _lerpValue(
        _defaultColor.red,
        _targetColorLeft.red,
        -normalizedOffset,
      );
      final green = _lerpValue(
        _defaultColor.green,
        _targetColorLeft.green,
        -normalizedOffset,
      );
      final blue = _lerpValue(
        _defaultColor.blue,
        _targetColorLeft.blue,
        -normalizedOffset,
      );
      return Color.fromRGBO(red, green, blue, 1);
    }

    return _defaultColor;
  }
}
