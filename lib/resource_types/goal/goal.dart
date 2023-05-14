// ignore_for_file: sort_unnamed_constructors_first

// Package imports:
import 'package:fhir/r4.dart';

class GoalUsCore extends Resource {
  GoalUsCore._(this._goal);

  factory GoalUsCore({
    String? fhirId,
    FhirMeta? meta,
    Narrative? text,
    required FhirCode lifecycleStatus,
    CodeableConcept? achievementStatus,
    required CodeableConcept description,
    required Reference subject,
    List<GoalTarget>? target,
  }) =>
      GoalUsCore._(Goal(
        fhirId: fhirId,
        meta: meta,
        text: text,
        lifecycleStatus: lifecycleStatus,
        achievementStatus: achievementStatus,
        description: description,
        subject: subject,
        target: target,
      ));

  factory GoalUsCore.simple({
    required FhirCode lifecycleStatus,
    required CodeableConcept description,
    required Reference subject,
    List<GoalTarget>? target,
  }) =>
      GoalUsCore(
        lifecycleStatus: lifecycleStatus,
        description: description,
        subject: subject,
        target: target,
      );

  factory GoalUsCore.minimum({
    required FhirCode lifecycleStatus,
    required CodeableConcept description,
    required Reference subject,
  }) =>
      GoalUsCore(
        lifecycleStatus: lifecycleStatus,
        description: description,
        subject: subject,
      );

  Goal _goal;
  Goal get value => _goal;
  @override
  String? get fhirId => _goal.fhirId;
  @override
  FhirMeta? get meta => _goal.meta;
  @override
  Narrative? get text => _goal.text;
  FhirCode? get lifecycleStatus => _goal.lifecycleStatus;
  CodeableConcept? get achievementStatus => _goal.achievementStatus;
  CodeableConcept get description => _goal.description;
  Reference get subject => _goal.subject;
  List<GoalTarget>? get target => _goal.target;
}

class GoalTargetUsCore {
  GoalTargetUsCore._(this._goalTarget);

  factory GoalTargetUsCore({
    FhirId? fhirId,
    FhirDate? dueDate,
  }) =>
      GoalTargetUsCore._(GoalTarget(fhirId: fhirId, dueDate: dueDate));

  GoalTarget _goalTarget;
  GoalTarget get value => _goalTarget;
  FhirId? get fhirId => _goalTarget.fhirId;
  FhirDate? get dueDate => _goalTarget.dueDate;
}
