import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/channel_manage/slack_verification_modal/model.dart';
import 'package:sora/repositories/slack_repository/slack_repository.dart';

final slackVerificationModalViewModelProvider =
    StateNotifierProvider.autoDispose<SlackVerificationModalViewModel,
        SlackVerificationModalModel>(SlackVerificationModalViewModel.new);

class SlackVerificationModalViewModel
    extends StateNotifier<SlackVerificationModalModel> {
  SlackVerificationModalViewModel(Ref ref)
      : _slackRepository = ref.read(slackRepositoryProvider),
        super(const SlackVerificationModalModel());

  final SlackRepositoryBase _slackRepository;

  Future<void> createVerificationCode() async {
    final verificationCode = await _slackRepository.createVerificationCode();
    if (verificationCode == null) {
      return;
    }
    state = state.copyWith(slackVerificationCode: verificationCode);
  }
}
