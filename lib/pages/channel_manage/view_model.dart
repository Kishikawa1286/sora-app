import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/channel_manage/model.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/repositories/slack_repository.dart';

final channelManagePageViewModelProvider = StateNotifierProvider.autoDispose<
    ChannelManagePageViewModel,
    ChannelManagePageModel>(ChannelManagePageViewModel.new);

class ChannelManagePageViewModel extends StateNotifier<ChannelManagePageModel> {
  ChannelManagePageViewModel(Ref ref)
      : _authRepository = ref.read(authRepositoryProvider),
        _slackRepository = ref.read(slackRepositoryProvider),
        super(const ChannelManagePageModel()) {
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

  final AuthRepository _authRepository;
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
