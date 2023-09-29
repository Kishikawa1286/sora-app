import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/account_management/model.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/repositories/slack_repository/slack_repository.dart';
import 'package:sora/utils/view_model_state_notifier.dart';

final accountManagementPageViewModelProvider = StateNotifierProvider
    .autoDispose<AccountManagementPageViewModel, AccountManagementPageModel>(
  (ref) =>
      AccountManagementPageViewModel(ref, const AccountManagementPageModel()),
);

class AccountManagementPageViewModel
    extends ViewModelStateNotifier<AccountManagementPageModel> {
  AccountManagementPageViewModel(Ref ref, super.model)
      : _authRepository = ref.read(authRepositoryProvider),
        _slackRepository = ref.read(slackRepositoryProvider) {
    _userIdStateSubscription = _authRepository.userId.listen((userId) {
      if (userId == null) {
        return;
      }
      _slackUsersSubscription =
          _slackRepository.fetchSlackUsers(userId).listen((slackUsers) {
        state = state.copyWith(slackUsers: slackUsers);
      });
    });
  }

  final AuthRepositoryBase _authRepository;
  final SlackRepositoryBase _slackRepository;
  late final StreamSubscription<String?> _userIdStateSubscription;
  late final StreamSubscription<List<SlackUser?>> _slackUsersSubscription;

  @override
  Future<void> dispose() async {
    await _userIdStateSubscription.cancel();
    await _slackUsersSubscription.cancel();
    super.dispose();
  }
}
