/*
    {
        "action":"deviceRegister",
        "deviceRegister":{
            "deviceModel":"RMX3521",
            "deviceFingerprint":"realme/RMX3521/RE54E2L1:13/RKQ1.211119.001/S.f1bb32-7f7fa_1:user/release-keys",
            "deviceBrand":"realme",
            "deviceId":"RE54E2L1",
            "deviceName":"RMX3521_11_C.10",
            "deviceManufacturer":"realme",
            "deviceProduct":"RMX3521",
            "deviceSerialNumber":"unknown"
        }
    }
*/

import 'package:equatable/equatable.dart';

class DeviceRegisterEntity extends Equatable {
  final String deviceModel;
  final String deviceFingerprint;
  final String deviceBrand;
  final String deviceId;
  final String deviceName;
  final String deviceManufacturer;
  final String deviceProduct;
  final String deviceSerialNumber;

  const DeviceRegisterEntity({
    required this.deviceModel,
    required this.deviceFingerprint,
    required this.deviceBrand,
    required this.deviceId,
    required this.deviceName,
    required this.deviceManufacturer,
    required this.deviceProduct,
    required this.deviceSerialNumber,
  });

  @override
  List<Object?> get props => [
    deviceModel,
    deviceFingerprint,
    deviceBrand,
    deviceId,
    deviceName,
    deviceManufacturer,
    deviceProduct,
    deviceSerialNumber,
  ];
}
