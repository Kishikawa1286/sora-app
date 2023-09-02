import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/messages/reply_modal/model.dart';
import 'package:sora/repositories/slack_repository.dart';
import 'package:sora/utils/view_model_state_notifier.dart';

final replyModalViewModelArgsProvider =
    Provider<ReplyModalViewModelArgs?>((ref) => null);

class ReplyModalViewModelArgs {
  const ReplyModalViewModelArgs({
    required this.messageId,
    required this.text,
  });

  final String messageId;
  final String text;
}

final replyModalViewModelProvider =
    StateNotifierProvider.autoDispose<ReplyModalViewModel, ReplyModalModel>(
  (ref) {
    final args = ref.watch(replyModalViewModelArgsProvider);
    if (args == null) {
      throw ArgumentError.notNull('args');
    }
    return ReplyModalViewModel(
      ref,
      ReplyModalModel(messageId: args.messageId, text: args.text),
    );
  },
  dependencies: [replyModalViewModelArgsProvider],
);

class ReplyModalViewModel extends ViewModelStateNotifier<ReplyModalModel> {
  ReplyModalViewModel(Ref ref, super.model)
      : _slackRepository = ref.read(slackRepositoryProvider);

  final SlackRepositoryBase _slackRepository;

  Future<void> reply() async {
    await _slackRepository.reply(text: state.text, messageId: state.messageId);
  }
}
