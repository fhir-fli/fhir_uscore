// ignore_for_file: sort_unnamed_constructors_first

// Package imports:
import 'package:fhir/r4.dart';

// Project imports:
import 'provenance.enums.dart';

class ProvenanceUsCore extends Resource {
  ProvenanceUsCore._(this._provenance);

  factory ProvenanceUsCore({
    String? fhirId,
    FhirMeta? meta,
    Narrative? text,
    required List<Reference> target,
    required FhirInstant recorded,
    required List<ProvenanceAgent> agent,
  }) =>
      ProvenanceUsCore._(Provenance(
          fhirId: fhirId,
          meta: meta,
          text: text,
          target: target,
          recorded: recorded,
          agent: agent));

  factory ProvenanceUsCore.simple({
    required Reference provenanceTarget,
    List<Reference>? target,
    required FhirInstant recorded,
    required List<ProvenanceAgent> agent,
  }) {
    target ??= <Reference>[];
    target.add(provenanceTarget);
    return ProvenanceUsCore(target: target, recorded: recorded, agent: agent);
  }

  Provenance _provenance;
  Provenance get value => _provenance;
  @override
  String? get fhirId => _provenance.fhirId;
  @override
  FhirMeta? get meta => _provenance.meta;
  @override
  Narrative? get text => _provenance.text;
  List<Reference> get target => _provenance.target;
  FhirInstant? get recorded => _provenance.recorded;
  List<ProvenanceAgent> get agent => _provenance.agent;
}

class ProvenanceAgentUsCore {
  ProvenanceAgentUsCore._(this._provenanceAgent);

  factory ProvenanceAgentUsCore({
    FhirId? fhirId,
    CodeableConcept? type,
    required Reference who,
    Reference? onBehalfOf,
  }) =>
      ProvenanceAgentUsCore._(ProvenanceAgent(
          fhirId: fhirId, type: type, who: who, onBehalfOf: onBehalfOf));

  factory ProvenanceAgentUsCore.fromParticipant(
          {required Reference who,
          ProvenanceAgentParticipantType? participantType}) =>
      ProvenanceAgentUsCore._(ProvenanceAgent(
          who: who,
          type: participantType == null
              ? null
              : codeableConceptFromProvenanceAgentParticipantType[
                  participantType]));

  ProvenanceAgent _provenanceAgent;
  ProvenanceAgent get value => _provenanceAgent;
  FhirId? get fhirId => _provenanceAgent.fhirId;
  CodeableConcept? get type => _provenanceAgent.type;
  Reference get who => _provenanceAgent.who;
  Reference? get onBehalfOf => _provenanceAgent.onBehalfOf;
}
