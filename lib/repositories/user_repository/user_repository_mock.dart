import 'package:sora/repositories/user_repository/user_repository.dart';

class UserRepositoryMock extends UserRepositoryBase {
  @override
  Future<void> setScheduleAdjustmentUrl(String url) async {
    await Future.delayed(const Duration(seconds: 1));
  }
}
