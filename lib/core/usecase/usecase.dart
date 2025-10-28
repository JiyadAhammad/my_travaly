import 'package:fpdart/fpdart.dart';

import '../error/failures.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<Either<AppFailures, SuccessType>> call(Params param);
}

class NoParams {}
