import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../entities/device_register_entity.dart';
import '../entities/search_auto_complete_entity.dart';
import '../entities/search_auto_complete_response_entity.dart';

abstract class HomeRepository {
  Future<Either<AppFailures, String>> registerDevice({
    required DeviceRegisterEntity deviceRegisterEntity,
  });
  Future<Either<AppFailures, SearchAutoCompleteResponseEntity>>
  searchAutoComplete({
    required SearchAutoCompleteEntity searchAutoCompleteEntity,
  });
}
