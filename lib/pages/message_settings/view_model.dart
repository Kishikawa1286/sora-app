import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/message_settings/model.dart';
import 'package:sora/repositories/user_repository/user_repository.dart';
import 'package:sora/utils/view_model_state_notifier.dart';

final messageSettingsPageViewModelProvider = StateNotifierProvider.autoDispose<
    MessageSettingsPageViewModel, MessageSettingsPageModel>(
  (ref) => MessageSettingsPageViewModel(ref, const MessageSettingsPageModel()),
);

class MessageSettingsPageViewModel
    extends ViewModelStateNotifier<MessageSettingsPageModel> {
  MessageSettingsPageViewModel(Ref ref, super.model)
      : _userRepository = ref.read(userRepositoryProvider);

  final UserRepositoryBase _userRepository;

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
}
