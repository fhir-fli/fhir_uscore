// ignore_for_file: sort_unnamed_constructors_first

// Package imports:
import 'package:fhir/r4.dart';

// Project imports:
import 'immunization.enums.dart';

class ImmunizationUsCore extends Resource {
  ImmunizationUsCore._(this._immunization);

  factory ImmunizationUsCore({
    String? fhirId,
    FhirMeta? meta,
    Narrative? text,
    required ImmunizationStatus status,
    CodeableConcept? statusReason,
    required CodeableConcept vaccineCode,
    required Reference patient,
    FhirDateTime? occurrenceDateTime,
    String? occurrenceString,
    required FhirBoolean primarySource,
  }) =>
      ImmunizationUsCore._(Immunization(
        fhirId: fhirId,
        meta: meta,
        text: text,
        status: codeFromImmunizationStatus(status),
        statusReason: statusReason,
        vaccineCode: vaccineCode,
        patient: patient,
        occurrenceDateTime: occurrenceDateTime,
        occurrenceString: occurrenceString,
        primarySource: primarySource,
      ));

  factory ImmunizationUsCore.simple({
    required ImmunizationStatus status,
    ImmunizationStatusReason? statusReason,
    required ImmunizationVaccineCode vaccineCode,
    required Reference patient,
    FhirDateTime? occurrenceDateTime,
    String? occurrenceString,
    required FhirBoolean primarySource,
  }) =>
      ImmunizationUsCore(
        status: status,
        statusReason: codeableConceptFromImmunizationStatusReason[statusReason],
        vaccineCode: codeableConceptFromImmunizationVaccineCode[vaccineCode]!,
        patient: patient,
        occurrenceDateTime: occurrenceDateTime,
        occurrenceString: occurrenceString,
        primarySource: primarySource,
      );

  factory ImmunizationUsCore.minimum({
    required ImmunizationStatus status,
    required ImmunizationVaccineCode vaccineCode,
    required Reference patient,
    FhirDateTime? occurrenceDateTime,
    String? occurrenceString,
    required FhirBoolean primarySource,
  }) =>
      ImmunizationUsCore(
        status: status,
        vaccineCode: codeableConceptFromImmunizationVaccineCode[vaccineCode]!,
        patient: patient,
        occurrenceDateTime: occurrenceDateTime,
        occurrenceString: occurrenceString,
        primarySource: primarySource,
      );

  Immunization _immunization;
  Immunization get value => _immunization;
  @override
  String? get fhirId => _immunization.fhirId;
  @override
  FhirMeta? get meta => _immunization.meta;
  @override
  Narrative? get text => _immunization.text;
  FhirCode? get status => _immunization.status;
  CodeableConcept? get statusReason => _immunization.statusReason;
  CodeableConcept get vaccineCode => _immunization.vaccineCode;
  Reference get patient => _immunization.patient;
  FhirDateTime? get occurrenceDateTime => _immunization.occurrenceDateTime;
  String? get occurrenceString => _immunization.occurrenceString;
  FhirBoolean? get primarySource => _immunization.primarySource;
}
