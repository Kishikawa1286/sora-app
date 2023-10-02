import 'package:sora/repositories/entities/users_collection.dart';
import 'package:sora/repositories/user_repository/user_repository.dart';

class UserRepositoryMock extends UserRepositoryBase {
  @override
  Stream<User?> fetchUser(String userId) => Stream.value(null);

  @override
  Future<void> setScheduleAdjustmentUrl(String url) async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
