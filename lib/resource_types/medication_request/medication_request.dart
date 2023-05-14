// ignore_for_file: sort_unnamed_constructors_first

// Package imports:
import 'package:fhir/r4.dart';

// Project imports:
import 'medication_request.enums.dart';

class MedicationRequestUsCore extends Resource {
  MedicationRequestUsCore._(this._medicationRequest);

  factory MedicationRequestUsCore({
    String? fhirId,
    FhirMeta? meta,
    Narrative? text,
    List<Identifier>? identifier,
    required MedicationRequestStatus status,
    required MedicationRequestIntent intent,
    List<Resource>? contained,
    FhirBoolean? reportedBoolean,
    Reference? reportedReference,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    required Reference subject,
    Reference? encounter,
    required FhirDateTime authoredOn,
    required Reference requester,
    List<Dosage>? dosageInstruction,
    MedicationRequestDispenseRequest? dispenseRequest,
  }) =>
      MedicationRequestUsCore._(MedicationRequest(
        fhirId: fhirId,
        meta: meta,
        text: text,
        identifier: identifier,
        status: medicationRequestEnumToCode(status),
        intent: medicationRequestEnumToCode(intent),
        contained: contained,
        reportedBoolean: reportedBoolean,
        reportedReference: reportedReference,
        medicationCodeableConcept: medicationCodeableConcept,
        medicationReference: medicationReference,
        subject: subject,
        encounter: encounter,
        authoredOn: authoredOn,
        requester: requester,
        dosageInstruction: dosageInstruction,
        dispenseRequest: dispenseRequest,
      ));

  factory MedicationRequestUsCore.simple({
    required MedicationRequestStatus status,
    required MedicationRequestIntent intent,
    FhirBoolean? reportedBoolean,
    Reference? reportedReference,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    required Reference subject,
    Reference? encounter,
    required FhirDateTime authoredOn,
    required Reference requester,
    List<Dosage>? dosageInstruction,
  }) =>
      MedicationRequestUsCore(
        status: status,
        intent: intent,
        reportedBoolean: reportedBoolean,
        reportedReference: reportedReference,
        medicationCodeableConcept: medicationCodeableConcept,
        medicationReference: medicationReference,
        subject: subject,
        encounter: encounter,
        authoredOn: authoredOn,
        requester: requester,
        dosageInstruction: dosageInstruction,
      );

  factory MedicationRequestUsCore.minimum({
    required MedicationRequestStatus status,
    required MedicationRequestIntent intent,
    CodeableConcept? medicationCodeableConcept,
    Reference? medicationReference,
    required Reference subject,
    required FhirDateTime authoredOn,
    required Reference requester,
  }) =>
      MedicationRequestUsCore(
        status: status,
        intent: intent,
        medicationCodeableConcept: medicationCodeableConcept,
        medicationReference: medicationReference,
        subject: subject,
        authoredOn: authoredOn,
        requester: requester,
      );

  MedicationRequest _medicationRequest;
  MedicationRequest get value => _medicationRequest;
  @override
  String? get fhirId => _medicationRequest.fhirId;
  @override
  FhirMeta? get meta => _medicationRequest.meta;
  @override
  Narrative? get text => _medicationRequest.text;
  List<Identifier>? get identifier => _medicationRequest.identifier;
  FhirCode? get status => _medicationRequest.status;
  FhirCode? get intent => _medicationRequest.intent;
  @override
  List<Resource>? get contained => _medicationRequest.contained;
  FhirBoolean? get reportedBoolean => _medicationRequest.reportedBoolean;
  Reference? get reportedReference => _medicationRequest.reportedReference;
  CodeableConcept? get medicationCodeableConcept =>
      _medicationRequest.medicationCodeableConcept;
  Reference? get medicationReference => _medicationRequest.medicationReference;
  Reference get subject => _medicationRequest.subject;
  Reference? get encounter => _medicationRequest.encounter;
  FhirDateTime? get authoredOn => _medicationRequest.authoredOn;
  Reference? get requester => _medicationRequest.requester;
  List<Dosage>? get dosageInstruction => _medicationRequest.dosageInstruction;
  MedicationRequestDispenseRequest? get dispenseRequest =>
      _medicationRequest.dispenseRequest;
}

class MedicationRequestDispenseRequestUsCore {
  MedicationRequestDispenseRequestUsCore._(
      this._medicationRequestDispenseRequest);

  factory MedicationRequestDispenseRequestUsCore({
    FhirId? fhirId,
    MedicationRequestInitialFill? initialFill,
    FhirDuration? dispenseInterval,
    Period? validityPeriod,
    FhirUnsignedInt? numberOfRepeatsAllowed,
    Quantity? quantity,
    FhirDuration? expectedSupplyDuration,
    Reference? performer,
  }) =>
      MedicationRequestDispenseRequestUsCore._(MedicationRequestDispenseRequest(
        fhirId: fhirId,
        initialFill: initialFill,
        dispenseInterval: dispenseInterval,
        validityPeriod: validityPeriod,
        numberOfRepeatsAllowed: numberOfRepeatsAllowed,
        quantity: quantity,
        expectedSupplyDuration: expectedSupplyDuration,
        performer: performer,
      ));

  MedicationRequestDispenseRequest _medicationRequestDispenseRequest;
  MedicationRequestDispenseRequest get value =>
      _medicationRequestDispenseRequest;
  FhirId? get fhirId => _medicationRequestDispenseRequest.fhirId;
  MedicationRequestInitialFill? get inititalFill =>
      _medicationRequestDispenseRequest.initialFill;
  FhirDuration? get dispenseInterval =>
      _medicationRequestDispenseRequest.dispenseInterval;
  Period? get validityPeriod =>
      _medicationRequestDispenseRequest.validityPeriod;
  FhirUnsignedInt? get numberOfRepeatsAllowed =>
      _medicationRequestDispenseRequest.numberOfRepeatsAllowed;
  Quantity? get quantity => _medicationRequestDispenseRequest.quantity;
  FhirDuration? get expectedSupplyDuration =>
      _medicationRequestDispenseRequest.expectedSupplyDuration;
  Reference? get performer => _medicationRequestDispenseRequest.performer;
}

class MedicationRequestInitialFillUsCore {
  MedicationRequestInitialFillUsCore._(this._medicationRequestInitialFill);

  factory MedicationRequestInitialFillUsCore({
    FhirId? fhirId,
    Quantity? quantity,
    FhirDuration? duration,
  }) =>
      MedicationRequestInitialFillUsCore._(MedicationRequestInitialFill(
          fhirId: fhirId, quantity: quantity, duration: duration));

  MedicationRequestInitialFill _medicationRequestInitialFill;
  MedicationRequestInitialFill get value => _medicationRequestInitialFill;
  FhirId? get fhirId => _medicationRequestInitialFill.fhirId;
  Quantity? get quantity => _medicationRequestInitialFill.quantity;
  FhirDuration? get duration => _medicationRequestInitialFill.duration;
}
