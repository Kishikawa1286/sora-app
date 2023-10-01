import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/helpers/cloud_functions_helper.dart';

abstract class UserRepositoryBase {
  Future<void> setScheduleAdjustmentUrl(String url);
}

final userRepositoryProvider = Provider<UserRepositoryBase>(
  (ref) => UserRepository(ref.read(cloudFunctionsHelperProvider)),
);

class UserRepository implements UserRepositoryBase {
  const UserRepository(this._cloudFunctionsHelper);

  final CloudFunctionsHelper _cloudFunctionsHelper;

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
