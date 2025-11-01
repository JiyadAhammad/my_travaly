import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/device_register_entity.dart';
import '../repository/home_repository.dart';

class DeviceRegisterUsecase implements UseCase<String, DeviceRegisterParam> {
  const DeviceRegisterUsecase(this.homeRepository);
  final HomeRepository homeRepository;

  @override
  Future<Either<AppFailures, String>> call(DeviceRegisterParam param) async {
    return homeRepository.registerDevice(
      deviceRegisterEntity: DeviceRegisterEntity(
        deviceModel: param.deviceModel,
        deviceFingerprint: param.deviceFingerprint,
        deviceBrand: param.deviceBrand,
        deviceId: param.deviceId,
        deviceName: param.deviceName,
        deviceManufacturer: param.deviceManufacturer,
        deviceProduct: param.deviceProduct,
        deviceSerialNumber: param.deviceSerialNumber,
      ),
    );
  }
}

class DeviceRegisterParam {
  const DeviceRegisterParam({
    required this.deviceModel,
    required this.deviceFingerprint,
    required this.deviceBrand,
    required this.deviceId,
    required this.deviceName,
    required this.deviceManufacturer,
    required this.deviceProduct,
    required this.deviceSerialNumber,
  });
  final String deviceModel;
  final String deviceFingerprint;
  final String deviceBrand;
  final String deviceId;
  final String deviceName;
  final String deviceManufacturer;
  final String deviceProduct;
  final String deviceSerialNumber;
}
