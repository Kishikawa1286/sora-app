import 'package:sora/repositories/chatgpt_repository/chatgpt_repository.dart';

class ChatGPTRepositoryMock extends ChatGPTRepositoryBase {
  @override
  Future<String?> generateReply(String text) async {
    await Future.delayed(const Duration(seconds: 1));
    return 'mock reply';
  }
}
