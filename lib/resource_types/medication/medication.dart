// ignore_for_file: sort_unnamed_constructors_first

// Package imports:
import 'package:fhir/r4.dart';

class MedicationUsCore extends Resource {
  MedicationUsCore._(this._medication);

  factory MedicationUsCore({
    String? fhirId,
    FhirMeta? meta,
    Narrative? text,
    required CodeableConcept code,
  }) =>
      MedicationUsCore._(
          Medication(fhirId: fhirId, meta: meta, text: text, code: code));

  factory MedicationUsCore.minimum({required CodeableConcept code}) =>
      MedicationUsCore(code: code);

  Medication _medication;
  Medication get value => _medication;
  @override
  String? get fhirId => _medication.fhirId;
  @override
  FhirMeta? get meta => _medication.meta;
  @override
  Narrative? get text => _medication.text;
  CodeableConcept? get code => _medication.code;
}
