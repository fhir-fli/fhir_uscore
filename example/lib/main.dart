//ignore_for_file: always_specify_types

import 'package:fhir/r4.dart';
import 'package:fhir_uscore/resource_types/patient/patient.dart';

void main() {
  final patient = PatientUsCore(
    id: '12345',
    identifier: [
      Identifier(
          use: IdentifierUse.usual,
          type: CodeableConcept(
            coding: [
              Coding(
                system:
                    FhirUri('http://terminology.hl7.org/CodeSystem/v2-0203'),
                code: FhirCode('MR'),
                display: 'Medical Record Number',
              ),
            ],
            text: 'Medical Record Number',
          ),
          system: FhirUri('http://hospital.smarthealthit.org'),
          value: '1305871'),
    ],
    active: FhirBoolean(true),
    name: <HumanName>[
      HumanName(
        family: 'Atreides',
        given: ['Paul'],
      ),
    ],
    address: <Address>[Address(postalCode: '12345')],
    gender: FhirCode('male'),
    birthDate: FhirDate(DateTime(3071, 04, 25)),
  );

  print(patient.toYaml());

  final condition = Condition(
    subject: Reference(reference: 'Patient/12345'),
    clinicalStatus: CodeableConcept(
      coding: <Coding>[
        Coding(
          system: FhirUri(
              'http://terminology.hl7.org/CodeSystem/condition-clinical'),
          code: FhirCode('active'),
          display: 'Active',
        ),
      ],
    ),
    verificationStatus: CodeableConcept(
      coding: <Coding>[
        Coding(
            system: FhirUri(
                'http://terminology.hl7.org/CodeSystem/condition-ver-status'),
            code: FhirCode('confirmed'),
            display: 'Confirmed')
      ],
    ),
    category: [
      CodeableConcept(
        coding: <Coding>[
          Coding(
            system: FhirUri(
                'http://hl7.org/fhir/us/core/CodeSystem/condition-category'),
            code: FhirCode('health-concern'),
          )
        ],
      )
    ],
    code: CodeableConcept(
      coding: <Coding>[
        Coding(
          system: FhirUri('http://factor.info/sct'),
          code: FhirCode('32911000'),
          display: 'Homeless',
        ),
      ],
      text: 'Homeless (finding)',
    ),
    onsetPeriod: Period(
      start: FhirDateTime(
        DateTime(
          DateTime.now().year - 1,
          DateTime.now().month,
          DateTime.now().day,
        ),
      ),
    ),
  );

  print(condition.toYaml());

  final observation = Observation(
    subject: Reference(reference: 'Patient/12345'),
    status: FhirCode('final'),
    category: [
      CodeableConcept(
        coding: <Coding>[
          Coding(
            system: FhirUri(
                'http://hl7.org/fhir/us/core/CodeSystem/condition-category'),
            code: FhirCode('social-history'),
            display: 'Social History',
          )
        ],
      ),
      CodeableConcept(
        coding: <Coding>[
          Coding(
            system: FhirUri(
                'http://hl7.org/fhir/us/core/CodeSystem/condition-category'),
            code: FhirCode('survey'),
            display: 'Survey',
          )
        ],
      ),
    ],
    code: CodeableConcept(
      coding: <Coding>[
        Coding(
          system: FhirUri('http://loinc.org'),
          code: FhirCode('LA19952-3'),
          display: 'At risk',
        ),
      ],
      text: 'Food insecurity risk [HVS]',
    ),
    effectivePeriod: Period(
      start: FhirDateTime(
        DateTime(
          DateTime.now().year - 1,
          DateTime.now().month,
          DateTime.now().day,
        ),
      ),
    ),
    valueCodeableConcept: CodeableConcept(
      coding: <Coding>[
        Coding(
          system: FhirUri('http://loinc.org'),
          code: FhirCode('LA17956-6'),
          display: 'Unemployed',
        ),
      ],
      text: 'Unemployed',
    ),
  );

  print(observation.toYaml());
}

class Patient {}
