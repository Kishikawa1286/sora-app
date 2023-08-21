import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/helpers/cloud_functions_helper.dart';
import 'package:sora/helpers/firestore_helper.dart';
import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/utils/loading_state/loading_state_handler.dart';

abstract class SlackRepositoryBase {
  Stream<List<SlackUser?>> fetchSlackUsers(String userId);

  Future<String?> createVerificationCode();

  Future<void> reply({required String text, required String messageId});
}

final slackRepositoryProvider = Provider<SlackRepository>(
  (ref) => SlackRepository(
    ref.read(cloudFunctionsHelperProvider),
    ref.read(firestoreHelperProvider),
    ref.watch(
      loadingStateProvider('slack_repository_verificationCode').notifier,
    ),
    ref.watch(loadingStateProvider('slack_repository_reply').notifier),
  ),
);

class SlackRepository implements SlackRepositoryBase {
  const SlackRepository(
    this._cloudFunctionsHelper,
    this._firestoreHelper,
    this._verificationCodeLoadingStateHandler,
    this._replyLoadingStateHandler,
  );

  final CloudFunctionsHelper _cloudFunctionsHelper;
  final FirestoreHelper _firestoreHelper;
  final LoadingStateHandler _verificationCodeLoadingStateHandler;
  final LoadingStateHandler _replyLoadingStateHandler;

  @override
  Stream<List<SlackUser?>> fetchSlackUsers(String userId) =>
      _firestoreHelper.queryStream(slackUsersCollectionRef(userId));

  @override
  Future<String?> createVerificationCode() async {
    try {
      return _verificationCodeLoadingStateHandler.runWithLoading(
        () async {
          final result = await _cloudFunctionsHelper.call<String>(
            'v1-slack-create_verification_code',
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

  @override
  Future<void> reply({required String text, required String messageId}) async {
    try {
      return _replyLoadingStateHandler.runWithLoading(
        () async {
          final result = await _cloudFunctionsHelper.call<void>(
            'v1-slack-reply',
            parameters: {
              'reply': text,
              'message_id': messageId,
            },
          );
          return result.data;
        },
        () => {},
      );
    } on Exception catch (e) {
      print(e);
      return;
    }
  }
}
