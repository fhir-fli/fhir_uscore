// ignore_for_file: sort_unnamed_constructors_first

// Package imports:
import 'package:fhir/r4.dart';

class DeviceUsCore extends Resource {
  DeviceUsCore._(this._device);

  factory DeviceUsCore({
    String? fhirId,
    FhirMeta? meta,
    Narrative? text,
    List<DeviceUdiCarrier>? udiCarrier,
    String? distinctIdentifier,
    String? manufacturer,
    FhirDateTime? manufactureDate,
    FhirDateTime? expirationDate,
    String? lotNumber,
    String? serialNumber,
    FhirCode? status,
    List<DeviceDeviceName>? deviceName,
    String? modelNumber,
    required CodeableConcept type,
    required Reference patient,
  }) =>
      DeviceUsCore._(Device(
        fhirId: fhirId,
        meta: meta,
        text: text,
        udiCarrier: udiCarrier,
        distinctIdentifier: distinctIdentifier,
        manufacturer: manufacturer,
        manufactureDate: manufactureDate,
        expirationDate: expirationDate,
        lotNumber: lotNumber,
        serialNumber: serialNumber,
        status: status,
        deviceName: deviceName,
        modelNumber: modelNumber,
        type: type,
        patient: patient,
      ));

  factory DeviceUsCore.implantable({
    DeviceUdiCarrier? udiCarrier,
    String? distinctIdentifier,
    FhirDateTime? manufactureDate,
    FhirDateTime? expirationDate,
    String? lotNumber,
    required CodeableConcept type,
    required Reference patient,
  }) =>
      DeviceUsCore(
        udiCarrier: udiCarrier == null ? null : <DeviceUdiCarrier>[udiCarrier],
        distinctIdentifier: distinctIdentifier,
        manufactureDate: manufactureDate,
        expirationDate: expirationDate,
        lotNumber: lotNumber,
        type: type,
        patient: patient,
      );

  factory DeviceUsCore.implantableMinimum({
    required CodeableConcept type,
    required Reference patient,
  }) =>
      DeviceUsCore(type: type, patient: patient);

  Device _device;
  Device get value => _device;
  @override
  String? get fhirId => _device.fhirId;
  @override
  FhirMeta? get meta => _device.meta;
  @override
  Narrative? get text => _device.text;
  List<DeviceUdiCarrier>? get udiCarrier => _device.udiCarrier;
  String? get distinctIdentifier => _device.distinctIdentifier;
  String? get manufacturer => _device.manufacturer;
  FhirDateTime? get manufactureDate => _device.manufactureDate;
  FhirDateTime? get expirationDate => _device.expirationDate;
  String? get lotNumber => _device.lotNumber;
  String? get serialNumber => _device.serialNumber;
  FhirCode? get status => _device.status;
  List<DeviceDeviceName>? get deviceName => _device.deviceName;
  String? get modelNumber => _device.modelNumber;
  CodeableConcept? get type => _device.type;
  Reference? get patient => _device.patient;
}

class DeviceUdiCarrierUsCore {
  DeviceUdiCarrierUsCore._(this._deviceUdiCarrier);

  factory DeviceUdiCarrierUsCore({
    String? fhirId,
    String? deviceIdentifier,
    FhirBase64Binary? carrierAIDC,
    String? carrierHRF,
    FhirCode? entryType,
  }) =>
      DeviceUdiCarrierUsCore._(DeviceUdiCarrier(
        fhirId: fhirId,
        deviceIdentifier: deviceIdentifier,
        carrierAIDC: carrierAIDC,
        carrierHRF: carrierHRF,
        entryType: entryType,
      ));

  DeviceUdiCarrier _deviceUdiCarrier;
  DeviceUdiCarrier get value => _deviceUdiCarrier;
  String? get id => _deviceUdiCarrier.fhirId;
  String? get deviceIdentifier => _deviceUdiCarrier.deviceIdentifier;
  FhirBase64Binary? get carrierAIDC => _deviceUdiCarrier.carrierAIDC;
  String? get carrierHRF => _deviceUdiCarrier.carrierHRF;
  FhirCode? get entryType => _deviceUdiCarrier.entryType;
}

class DeviceDeviceNameUsCore {
  DeviceDeviceNameUsCore._(this._deviceDeviceName);

  factory DeviceDeviceNameUsCore({
    String? fhirId,
    String? name,
    FhirCode? type,
  }) =>
      DeviceDeviceNameUsCore._(
          DeviceDeviceName(fhirId: fhirId, name: name, type: type));

  DeviceDeviceName _deviceDeviceName;
  DeviceDeviceName get value => _deviceDeviceName;
  String? get id => _deviceDeviceName.fhirId;
  String? get name => _deviceDeviceName.name;
  FhirCode? get type => _deviceDeviceName.type;
}
