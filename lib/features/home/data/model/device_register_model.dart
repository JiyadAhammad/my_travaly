import '../../domain/entities/device_register_entity.dart';

class DeviceRegisterModel extends DeviceRegisterEntity {
  const DeviceRegisterModel({
    required super.deviceModel,
    required super.deviceFingerprint,
    required super.deviceBrand,
    required super.deviceId,
    required super.deviceName,
    required super.deviceManufacturer,
    required super.deviceProduct,
    required super.deviceSerialNumber,
  });

  factory DeviceRegisterModel.fromEntity(DeviceRegisterEntity entity) {
    return DeviceRegisterModel(
      deviceModel: entity.deviceModel,
      deviceFingerprint: entity.deviceFingerprint,
      deviceBrand: entity.deviceBrand,
      deviceId: entity.deviceId,
      deviceName: entity.deviceName,
      deviceManufacturer: entity.deviceManufacturer,
      deviceProduct: entity.deviceProduct,
      deviceSerialNumber: entity.deviceSerialNumber,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'action': 'deviceRegister',
    'deviceRegister': <String, String>{
      'deviceModel': deviceModel,
      'deviceFingerprint': deviceFingerprint,
      'deviceBrand': deviceBrand,
      'deviceId': deviceId,
      'deviceName': deviceName,
      'deviceManufacturer': deviceManufacturer,
      'deviceProduct': deviceProduct,
      'deviceSerialNumber': deviceSerialNumber,
    },
  };
}
