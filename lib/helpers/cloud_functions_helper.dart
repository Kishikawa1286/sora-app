import 'package:cloud_functions/cloud_functions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cloudFunctionsHelperProvider =
    Provider<CloudFunctionsHelper>((ref) => const CloudFunctionsHelper());

class CloudFunctionsHelper {
  const CloudFunctionsHelper();

  FirebaseFunctions get _firebaseFunctions =>
      FirebaseFunctions.instanceFor(region: 'asia-northeast1');

  Future<HttpsCallableResult<T>> call<T>(
    String functionName, {
    HttpsCallableOptions? options,
    Map<String, dynamic>? parameters,
  }) =>
      _firebaseFunctions
          .httpsCallable(functionName, options: options)
          .call<T>(parameters);
}
