import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/device_register_entity.dart';

abstract class HomeRepository {
  Future<Either<AppFailures, String>> registerDevice({
    required DeviceRegisterEntity deviceRegisterEntity,
  });
}
