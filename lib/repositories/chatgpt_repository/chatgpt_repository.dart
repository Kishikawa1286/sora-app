import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/helpers/cloud_functions_helper.dart';
import 'package:sora/utils/loading_state/loading_state_handler.dart';

abstract class ChatGPTRepositoryBase {
  Future<String?> generateReply(String text);
}

final chatGPTRepositoryProvider = Provider<ChatGPTRepositoryBase>(
  (ref) => ChatGPTRepository(
    ref.read(cloudFunctionsHelperProvider),
    ref.watch(loadingStateProvider('chatgpt_repository').notifier),
  ),
);

class ChatGPTRepository implements ChatGPTRepositoryBase {
  const ChatGPTRepository(
    this._cloudFunctionsHelper,
    this._loadingStateHandler,
  );

  final CloudFunctionsHelper _cloudFunctionsHelper;
  final LoadingStateHandler _loadingStateHandler;

  @override
  Future<String?> generateReply(String text) async {
    try {
      return _loadingStateHandler.runWithLoading(
        () async {
          final result = await _cloudFunctionsHelper.call<String>(
            'v1-tool-generate_reply',
            // You can see parameter names and types in the Cloud Functions code.
            // https://github.com/Kishikawa1286/sora-firebase/blob/main/functions/src/functions/v1/tool/generate-reply.ts
            parameters: {'text': text, 'type': 'chat'},
          );
          return result.data;
        },
        () => null,
      );
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }
}
