import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/helpers/cloud_functions_helper.dart';
import 'package:sora/helpers/firestore_helper.dart';
import 'package:sora/repositories/entities/users_collection.dart';

final slackRepositoryProvider = Provider<SlackRepository>(
  (ref) => SlackRepository(
    ref.read(cloudFunctionsHelperProvider),
    ref.read(firestoreHelperProvider),
  ),
);

class SlackRepository {
  SlackRepository(this._cloudFunctionsHelper, this._firestoreHelper);

  final CloudFunctionsHelper _cloudFunctionsHelper;
  final FirestoreHelper _firestoreHelper;

  Stream<List<SlackUser?>> fetchSlackUsers(String userId) =>
      _firestoreHelper.queryStream(slackUsersCollectionRef(userId));

  Future<String?> createVerificationCode() async {
    try {
      final result = await _cloudFunctionsHelper.call<String>(
        'v1-slack-create_verification_code',
      );
      return result.data;
    } on Exception catch (e) {
      print(e);
      return null;
    }
  }

  Future<void> reply({required String text, required String messageId}) =>
      _cloudFunctionsHelper.call<void>(
        'v1-slack-reply',
        parameters: {
          'reply': text,
          'message_id': messageId,
        },
      );
}
