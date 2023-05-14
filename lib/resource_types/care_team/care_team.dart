// ignore_for_file: sort_unnamed_constructors_first

// Package imports:
import 'package:fhir/r4.dart';

// Project imports:
import 'care_team.enums.dart';

class CareTeamUsCore extends Resource {
  CareTeamUsCore._(this._careTeam);

  factory CareTeamUsCore({
    String? fhirId,
    FhirMeta? meta,
    Narrative? text,
    String? name,
    CareTeamStatus? status,
    required Reference subject,
    required List<CareTeamParticipant> participant,
  }) =>
      CareTeamUsCore._(CareTeam(
        fhirId: fhirId,
        meta: meta,
        text: text,
        name: name,
        status: FhirCode(codeFromCareTeamStatus[status]),
        subject: subject,
        participant: participant,
      ));

  factory CareTeamUsCore.simple({
    CareTeamStatus? status,
    required Reference subject,
    required CareTeamProviderRole role,
    required Reference member,
    List<CareTeamParticipant>? participant,
  }) {
    participant ??= <CareTeamParticipant>[];
    participant.add(CareTeamParticipant(
        role: codeableConceptFromProviderRole[role] == null
            ? <CodeableConcept>[]
            : <CodeableConcept>[codeableConceptFromProviderRole[role]!],
        member: member));
    return CareTeamUsCore(
      status: status,
      subject: subject,
      participant: participant,
    );
  }

  factory CareTeamUsCore.minimum(
          {required Reference subject,
          required CareTeamProviderRole role,
          required Reference member}) =>
      CareTeamUsCore.simple(subject: subject, role: role, member: member);

  CareTeam _careTeam;
  CareTeam get value => _careTeam;
  @override
  String? get fhirId => _careTeam.fhirId;
  @override
  FhirMeta? get meta => _careTeam.meta;
  @override
  Narrative? get text => _careTeam.text;
  String? get name => _careTeam.name;
  FhirCode? get status => _careTeam.status;
  Reference? get subject => _careTeam.subject;
  List<CareTeamParticipant>? get participant => _careTeam.participant;
}

class CareTeamParticipantUsCore {
  CareTeamParticipantUsCore._(this._careTeamParticipant);

  factory CareTeamParticipantUsCore({
    FhirId? fhirId,
    required List<CodeableConcept> role,
    required Reference member,
  }) =>
      CareTeamParticipantUsCore._(
          CareTeamParticipant(fhirId: fhirId, role: role, member: member));

  CareTeamParticipant _careTeamParticipant;
  CareTeamParticipant get value => _careTeamParticipant;
  FhirId? get id => _careTeamParticipant.fhirId;
  List<CodeableConcept>? get role => _careTeamParticipant.role;
  Reference? get member => _careTeamParticipant.member;
}
