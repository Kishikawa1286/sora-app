import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/repositories/slack_repository.dart';

final replyModalMessageIdProvider = AutoDisposeProvider<String?>((ref) => null);

final replyModalTextProvider = AutoDisposeProvider<String?>((ref) => null);

final replyModalViewModelProvider = Provider.autoDispose<ReplyModalViewModel>(
  (ref) {
    final messageId = ref.watch(replyModalMessageIdProvider);
    final text = ref.watch(replyModalTextProvider);
    if (messageId == null || text == null) {
      throw Exception('messageId or text is null');
    }
    return ReplyModalViewModel(ref, messageId, text);
  },
  dependencies: [replyModalMessageIdProvider, replyModalTextProvider],
);

class ReplyModalViewModel {
  ReplyModalViewModel(Ref ref, this._messageId, this.text)
      : _slackRepository = ref.read(slackRepositoryProvider);

  final String _messageId;
  final String text;

  final SlackRepositoryBase _slackRepository;

  Future<void> reply() async {
    await _slackRepository.reply(text: text, messageId: _messageId);
  }
}
