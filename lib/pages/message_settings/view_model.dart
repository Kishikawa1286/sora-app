import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/message_settings/model.dart';
import 'package:sora/repositories/auth_repository/auth_repository.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/repositories/user_repository/user_repository.dart';
import 'package:sora/utils/view_model_state_notifier.dart';

final messageSettingsPageViewModelProvider = StateNotifierProvider.autoDispose<
    MessageSettingsPageViewModel, MessageSettingsPageModel>(
  (ref) => MessageSettingsPageViewModel(ref, const MessageSettingsPageModel()),
);

class MessageSettingsPageViewModel
    extends ViewModelStateNotifier<MessageSettingsPageModel> {
  MessageSettingsPageViewModel(Ref ref, super.model)
      : _authRepository = ref.read(authRepositoryProvider),
        _userRepository = ref.read(userRepositoryProvider) {
    _userIdStateSubscription = _authRepository.userId.listen((userId) {
      if (userId == null) {
        return;
      }
      print(userId);
      _userSubscription = _userRepository.fetchUser(userId).listen((user) {
        if (user == null) {
          return;
        }
        final scheduleAdjustmentUrl = user.scheduleAdjustmentUrl;
        if (scheduleAdjustmentUrl == null) {
          return;
        }
        _urlTextController.text = scheduleAdjustmentUrl;
        state = state.copyWith(scheduleAdjustmentUrl: scheduleAdjustmentUrl);
      });
    });
  }

  final AuthRepositoryBase _authRepository;
  final UserRepositoryBase _userRepository;
  late final StreamSubscription<String?> _userIdStateSubscription;
  late final StreamSubscription<User?> _userSubscription;

  final _urlTextController = TextEditingController();
  TextEditingController get urlTextController => _urlTextController;

  void updateUrlText(String? text) {
    if (text == null) {
      return;
    }
    state = state.copyWith(scheduleAdjustmentUrl: text);
  }

  Future<void> saveUrl() async {
    await _userRepository.setScheduleAdjustmentUrl(state.scheduleAdjustmentUrl);
  }

  @override
  Future<void> dispose() async {
    await _userIdStateSubscription.cancel();
    await _userSubscription.cancel();
    super.dispose();
  }
}
