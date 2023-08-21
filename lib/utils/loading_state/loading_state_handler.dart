import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/utils/loading_state/loading_state.dart';

final loadingStateProvider =
    StateNotifierProviderFamily<LoadingStateHandler, LoadingState, String>(
  (ref, identifier) => LoadingStateHandler(identifier),
);

class LoadingStateHandler extends StateNotifier<LoadingState> {
  LoadingStateHandler(this.identifier) : super(const LoadingState());

  final String identifier;

  void _startLoading() {
    state = state.copyWith(loading: true);
  }

  void _stopLoading() {
    state = state.copyWith(loading: false);
  }

  Future<T> runWithLoading<T>(
    Future<T> Function() f,
    T Function() onLoading,
  ) async {
    if (state.loading) {
      return onLoading();
    }
    try {
      _startLoading();
      final result = await f();
      return result;
    } finally {
      _stopLoading();
    }
  }
}
