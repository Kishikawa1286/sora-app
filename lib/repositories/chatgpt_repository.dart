import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/helpers/cloud_functions_helper.dart';

abstract class ChatGPTRepositoryBase {
  Future<String?> generateReply(String text);
}

final chatGPTRepositoryProvider = Provider<ChatGPTRepository>(
  (ref) => ChatGPTRepository(
    ref.read(cloudFunctionsHelperProvider),
  ),
);

class ChatGPTRepository implements ChatGPTRepositoryBase {
  const ChatGPTRepository(this._cloudFunctionsHelper);

  final CloudFunctionsHelper _cloudFunctionsHelper;

  @override
  Future<String?> generateReply(String text) async {
    try {
      final result = await _cloudFunctionsHelper.call<String>(
        'v1-tool-generate_reply',
        // You can see parameter names and types in the Cloud Functions code.
        // https://github.com/Kishikawa1286/sora-firebase/blob/main/functions/src/functions/v1/tool/generate-reply.ts
        parameters: {'text': text, 'type': 'chat'},
      );
      return result.data;
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }
}
