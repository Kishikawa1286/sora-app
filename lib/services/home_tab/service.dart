import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/services/home_tab/model.dart';
import 'package:sora/utils/view_model_state_notifier.dart';

final homeTabServiceProvider =
    StateNotifierProvider<HomeTabService, HomeTabModel>(
  (ref) => HomeTabService(const HomeTabModel()),
);

class HomeTabService extends ViewModelStateNotifier<HomeTabModel> {
  HomeTabService(super.model);

  void _startLoading() {
    state = state.copyWith(isLoading: true);
  }

  void _finishLoading() {
    final pendingTab = state.pendingTab;
    if (pendingTab == null) {
      state = state.copyWith(isLoading: false, pendingTab: null);
      return;
    }
    state = state.copyWith(
      isLoading: false,
      tab: pendingTab,
      pendingTab: null,
    );
  }

  Future<T> runWithLoading<T>(
    FutureOr<T> Function() f, {
    required T Function() onLoading,
  }) async {
    if (state.isLoading) {
      return onLoading();
    }
    _startLoading();
    final result = await f();
    _finishLoading();
    return result;
  }

  void setTab(int tab) {
    if (state.isLoading) {
      state = state.copyWith(pendingTab: tab);
      return;
    }
    state = state.copyWith(tab: tab);
  }
}
