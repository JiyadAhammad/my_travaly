import 'package:fpdart/fpdart.dart';

import '../error/failures.dart';

Future<Either<AppFailures, Success>> safeCall<Success>(
  Future<Success> Function() call,
) async {
  try {
    final Success result = await call();
    return right(result);
  } on ClientFailures catch (e) {
    return left(ClientFailures(message: e.message, statusCode: e.statusCode));
  } on ServerFailures catch (e) {
    return left(ServerFailures(message: e.message, statusCode: e.statusCode));
  } catch (e) {
    return left(AppFailures(message: e.toString(), statusCode: -1));
  }
}
