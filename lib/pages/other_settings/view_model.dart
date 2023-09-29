import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/utils/view_model_state_notifier.dart';

final otherSettingsPageViewModelProvider =
    StateNotifierProvider.autoDispose<OtherSettingsPageViewModel, void>(
  (ref) => OtherSettingsPageViewModel(ref, null),
);

class OtherSettingsPageViewModel extends ViewModelStateNotifier<void> {
  OtherSettingsPageViewModel(Ref ref, super.model)
      : _authRepository = ref.read(authRepositoryProvider);

  final AuthRepositoryBase _authRepository;

  Future<void> signOut() async {
    await _authRepository.signOut();
  }
}
