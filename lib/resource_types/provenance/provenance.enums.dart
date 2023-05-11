// Package imports:
import 'package:fhir/r4.dart';
import 'package:json_annotation/json_annotation.dart';

enum ProvenanceAgentParticipantType {
  @JsonValue('transmitter')
  transmitter,
  @JsonValue('enterer')
  enterer,
  @JsonValue('performer')
  performer,
  @JsonValue('author')
  author,
  @JsonValue('verifier')
  verifier,
  @JsonValue('legal')
  legal,
  @JsonValue('attester')
  attester,
  @JsonValue('informant')
  informant,
  @JsonValue('custodian')
  custodian,
  @JsonValue('assembler')
  assembler,
  @JsonValue('composer')
  composer,
}

final Map<ProvenanceAgentParticipantType, CodeableConcept>
    codeableConceptFromProvenanceAgentParticipantType =
    <ProvenanceAgentParticipantType, CodeableConcept>{
  ProvenanceAgentParticipantType.transmitter: CodeableConcept(
    coding: <Coding>[
      Coding(
        system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/provenance-participant-type'),
        code: FhirCode('transmitter'),
        display: 'Transmitter',
      ),
    ],
  ),
  ProvenanceAgentParticipantType.enterer: CodeableConcept(
    coding: <Coding>[
      Coding(
        system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/provenance-participant-type'),
        code: FhirCode('enterer'),
        display: 'Enterer',
      ),
    ],
  ),
  ProvenanceAgentParticipantType.performer: CodeableConcept(
    coding: <Coding>[
      Coding(
        system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/provenance-participant-type'),
        code: FhirCode('performer'),
        display: 'Performer',
      ),
    ],
  ),
  ProvenanceAgentParticipantType.author: CodeableConcept(
    coding: <Coding>[
      Coding(
        system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/provenance-participant-type'),
        code: FhirCode('author'),
        display: 'Author',
      ),
    ],
  ),
  ProvenanceAgentParticipantType.verifier: CodeableConcept(
    coding: <Coding>[
      Coding(
        system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/provenance-participant-type'),
        code: FhirCode('verifier'),
        display: 'Verifier',
      ),
    ],
  ),
  ProvenanceAgentParticipantType.legal: CodeableConcept(
    coding: <Coding>[
      Coding(
        system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/provenance-participant-type'),
        code: FhirCode('legal'),
        display: 'Legal Authenticator',
      ),
    ],
  ),
  ProvenanceAgentParticipantType.attester: CodeableConcept(
    coding: <Coding>[
      Coding(
        system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/provenance-participant-type'),
        code: FhirCode('attester'),
        display: 'Attester',
      ),
    ],
  ),
  ProvenanceAgentParticipantType.informant: CodeableConcept(
    coding: <Coding>[
      Coding(
        system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/provenance-participant-type'),
        code: FhirCode('informant'),
        display: 'Informant',
      ),
    ],
  ),
  ProvenanceAgentParticipantType.custodian: CodeableConcept(
    coding: <Coding>[
      Coding(
        system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/provenance-participant-type'),
        code: FhirCode('custodian'),
        display: 'Custodian',
      ),
    ],
  ),
  ProvenanceAgentParticipantType.assembler: CodeableConcept(
    coding: <Coding>[
      Coding(
        system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/provenance-participant-type'),
        code: FhirCode('assembler'),
        display: 'Assembler',
      ),
    ],
  ),
  ProvenanceAgentParticipantType.composer: CodeableConcept(
    coding: <Coding>[
      Coding(
        system: FhirUri(
            'http://terminology.hl7.org/CodeSystem/provenance-participant-type'),
        code: FhirCode('composer'),
        display: 'Composer',
      ),
    ],
  ),
};
