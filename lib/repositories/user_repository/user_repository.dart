import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/helpers/cloud_functions_helper.dart';
import 'package:sora/helpers/firestore_helper.dart';
import 'package:sora/repositories/entities/users_collection.dart';

abstract class UserRepositoryBase {
  Stream<User?> fetchUser(String userId);
  Future<void> setScheduleAdjustmentUrl(String url);
}

final userRepositoryProvider = Provider<UserRepositoryBase>(
  (ref) => UserRepository(
    ref.read(firestoreHelperProvider),
    ref.read(cloudFunctionsHelperProvider),
  ),
);

class UserRepository implements UserRepositoryBase {
  const UserRepository(
    this._firestoreHelper,
    this._cloudFunctionsHelper,
  );

  final FirestoreHelper _firestoreHelper;
  final CloudFunctionsHelper _cloudFunctionsHelper;

  @override
  Stream<User?> fetchUser(String userId) =>
      _firestoreHelper.documentStream(userDocRef(userId));

  @override
  Future<void> setScheduleAdjustmentUrl(String url) async {
    await _cloudFunctionsHelper.call(
      'v1-user-set_schedule_adjustment_url',
      parameters: <String, dynamic>{
        'schedule_adjustment_url': url,
      },
    );
  }
}
