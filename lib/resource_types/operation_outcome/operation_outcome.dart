// ignore_for_file: sort_unnamed_constructors_first

// Package imports:
import 'package:fhir/r4.dart';

class OperationOutcomeUsCore extends Resource {
  OperationOutcomeUsCore._(this._operationOutcome);

  factory OperationOutcomeUsCore({
    String? fhirId,
    FhirMeta? meta,
    Narrative? text,
    FhirCode? language,
    List<Resource>? contained,
    required List<OperationOutcomeIssue> issue,
  }) =>
      OperationOutcomeUsCore._(OperationOutcome(
        fhirId: fhirId,
        meta: meta,
        text: text,
        language: language,
        contained: contained,
        issue: issue,
      ));

  bool get isInformational =>
      issue.first.code.toString().toLowerCase() == 'informational';

  OperationOutcome _operationOutcome;
  OperationOutcome get value => _operationOutcome;
  @override
  String? get fhirId => _operationOutcome.fhirId;
  @override
  FhirMeta? get meta => _operationOutcome.meta;
  @override
  Narrative? get text => _operationOutcome.text;
  @override
  FhirCode? get language => _operationOutcome.language;
  @override
  List<Resource>? get contained => _operationOutcome.contained;
  List<OperationOutcomeIssue> get issue => _operationOutcome.issue;
}

class OperationOutcomeIssueUsCore {
  OperationOutcomeIssueUsCore._(this._operationOutcomeIssue);

  factory OperationOutcomeIssueUsCore({
    FhirId? fhirId,
    FhirCode? severity,
    FhirCode? code,
    CodeableConcept? details,
    String? diagnostics,
    List<String>? location,
    List<String>? expression,
  }) =>
      OperationOutcomeIssueUsCore._(OperationOutcomeIssue(
        fhirId: fhirId,
        severity: severity,
        code: code,
        details: details,
        diagnostics: diagnostics,
        location: location,
        expression: expression,
      ));

  OperationOutcomeIssue _operationOutcomeIssue;
  OperationOutcomeIssue get value => _operationOutcomeIssue;
  FhirId? get fhirId => _operationOutcomeIssue.fhirId;
  FhirCode? get severity => _operationOutcomeIssue.severity;
  FhirCode? get code => _operationOutcomeIssue.code;
  CodeableConcept? get details => _operationOutcomeIssue.details;
  String? get diagnostics => _operationOutcomeIssue.diagnostics;
  List<String>? get location => _operationOutcomeIssue.location;
  List<String>? get expression => _operationOutcomeIssue.expression;
}
