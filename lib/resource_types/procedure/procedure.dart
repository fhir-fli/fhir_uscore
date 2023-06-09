// ignore_for_file: sort_unnamed_constructors_first

// Package imports:
import 'package:fhir/r4.dart';

// Project imports:
import 'procedure.enums.dart';

class ProcedureUsCore extends Resource {
  ProcedureUsCore._(this._procedure);

  factory ProcedureUsCore({
    String? fhirId,
    FhirMeta? meta,
    Narrative? text,
    List<Identifier>? identifier,
    required ProcedureStatus status,
    required CodeableConcept code,
    required Reference subject,
    FhirDateTime? performedDateTime,
    Period? performedPeriod,
    List<ProcedurePerformer>? performer,
    List<ProcedureFocalDevice>? focalDevice,
  }) =>
      ProcedureUsCore._(Procedure(
        fhirId: fhirId,
        meta: meta,
        text: text,
        identifier: identifier,
        status: procedureStatusToCode(status),
        code: code,
        subject: subject,
        performedDateTime: performedDateTime,
        performedPeriod: performedPeriod,
        performer: performer,
        focalDevice: focalDevice,
      ));

  Procedure _procedure;
  Procedure get value => _procedure;
  @override
  String? get fhirId => _procedure.fhirId;
  @override
  FhirMeta? get meta => _procedure.meta;
  @override
  Narrative? get text => _procedure.text;
  List<Identifier>? get identifier => _procedure.identifier;
  FhirCode? get status => _procedure.status;
  CodeableConcept? get code => _procedure.code;
  Reference get subject => _procedure.subject;
  FhirDateTime? get performedDateTime => _procedure.performedDateTime;
  Period? get performedPeriod => _procedure.performedPeriod;
  List<ProcedurePerformer>? get performer => _procedure.performer;
  List<ProcedureFocalDevice>? get focalDevice => _procedure.focalDevice;
}

class ProcedurePerformerUsCore {
  ProcedurePerformerUsCore._(this._procedurePerformer);

  factory ProcedurePerformerUsCore({
    FhirId? fhirId,
    CodeableConcept? function,
    required Reference actor,
    Reference? onBehalfOf,
  }) =>
      ProcedurePerformerUsCore._(ProcedurePerformer(
        fhirId: fhirId,
        function: function,
        actor: actor,
        onBehalfOf: onBehalfOf,
      ));

  ProcedurePerformer _procedurePerformer;
  ProcedurePerformer get value => _procedurePerformer;
  FhirId? get fhirId => _procedurePerformer.fhirId;
  CodeableConcept? get function => _procedurePerformer.function;
  Reference get actor => _procedurePerformer.actor;
  Reference? get onBehalfOf => _procedurePerformer.onBehalfOf;
}

class ProcedureFocalDeviceUsCore {
  ProcedureFocalDeviceUsCore._(this._procedureFocalDevice);

  factory ProcedureFocalDeviceUsCore({
    FhirId? fhirId,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? action,
    required Reference manipulated,
  }) =>
      ProcedureFocalDeviceUsCore._(ProcedureFocalDevice(
        fhirId: fhirId,
        modifierExtension: modifierExtension,
        action: action,
        manipulated: manipulated,
      ));

  ProcedureFocalDevice _procedureFocalDevice;
  ProcedureFocalDevice get value => _procedureFocalDevice;
  FhirId? get fhirId => _procedureFocalDevice.fhirId;
  List<FhirExtension>? get modifierExtension =>
      _procedureFocalDevice.modifierExtension;
  CodeableConcept? get action => _procedureFocalDevice.action;
  Reference get manipulated => _procedureFocalDevice.manipulated;
}
