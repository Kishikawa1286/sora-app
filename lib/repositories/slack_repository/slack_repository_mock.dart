import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/repositories/slack_repository/slack_repository.dart';

class SlackRepositoryMock extends SlackRepositoryBase {
  @override
  Stream<List<SlackUser?>> fetchSlackUsers(String userId) => Stream.value([]);

  @override
  Future<String?> createVerificationCode() async {
    await Future.delayed(const Duration(seconds: 1));
    return 'mock verification code';
  }

  @override
  Future<void> reply({required String text, required String messageId}) async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
