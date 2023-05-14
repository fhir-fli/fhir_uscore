// ignore_for_file: sort_unnamed_constructors_first

// Package imports:
import 'package:fhir/r4.dart';

// Project imports:
import 'document_reference.enums.dart';

class DocumentReferenceUsCore extends Resource {
  DocumentReferenceUsCore._(this._documentReference);

  factory DocumentReferenceUsCore({
    String? fhirId,
    FhirMeta? meta,
    Narrative? text,
    List<Identifier>? identifier,
    required FhirCode status,
    required CodeableConcept type,
    List<CodeableConcept>? category,
    Reference? subject,
    FhirInstant? date,
    List<Reference>? author,
    Reference? custodian,
    required List<DocumentReferenceContent> content,
    DocumentReferenceContext? context,
    String? description,
  }) =>
      DocumentReferenceUsCore._(DocumentReference(
        fhirId: fhirId,
        meta: meta,
        text: text,
        identifier: identifier,
        status: status,
        type: type,
        category: category,
        subject: subject,
        date: date,
        author: author,
        custodian: custodian,
        content: content,
        context: context,
        description: description,
      ));

  factory DocumentReferenceUsCore.simple({
    List<Identifier>? identifier,
    required FhirCode status,
    required CodeableConcept type,
    List<CodeableConcept>? category,
    required Reference subject,
    FhirInstant? date,
    List<Reference>? author,
    Reference? custodian,
    required Attachment documentReferenceContentAttachment,
    List<DocumentReferenceContent>? content,
    DocumentReferenceContext? context,
  }) {
    category ??= <CodeableConcept>[];
    category.add(
      CodeableConcept(
        coding: <Coding>[
          Coding(
            system: FhirUri(
                'http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category'),
            code: FhirCode('clinical-note'),
            display: 'Clinical Note',
          ),
        ],
        text: 'Clinical Note',
      ),
    );
    content ??= <DocumentReferenceContent>[];
    content.add(DocumentReferenceContent(
        attachment: documentReferenceContentAttachment));
    return DocumentReferenceUsCore(
      identifier: identifier,
      status: status,
      type: type,
      category: category,
      subject: subject,
      date: date,
      author: author,
      custodian: custodian,
      content: content,
      context: context,
    );
  }

  factory DocumentReferenceUsCore.minimum({
    required FhirCode status,
    required DocumentReferenceType documentReferenceType,
    required Reference subject,
    required Attachment documentReferenceContentAttachment,
  }) {
    return DocumentReferenceUsCore.simple(
      status: status,
      type: codeableConceptFromDocumentReferenceType[documentReferenceType]!,
      subject: subject,
      documentReferenceContentAttachment: documentReferenceContentAttachment,
    );
  }

  DocumentReference _documentReference;
  DocumentReference get value => _documentReference;
  @override
  String? get fhirId => _documentReference.fhirId;
  @override
  FhirMeta? get meta => _documentReference.meta;
  @override
  Narrative? get text => _documentReference.text;
  List<Identifier>? get identifier => _documentReference.identifier;
  FhirCode? get status => _documentReference.status;
  CodeableConcept? get type => _documentReference.type;
  List<CodeableConcept>? get category => _documentReference.category;
  Reference? get subject => _documentReference.subject;
  FhirInstant? get date => _documentReference.date;
  List<Reference>? get author => _documentReference.author;
  Reference? get custodian => _documentReference.custodian;
  List<DocumentReferenceContent> get content => _documentReference.content;
  DocumentReferenceContext? get context => _documentReference.context;
  String? get description => _documentReference.description;
}

class DocumentReferenceContentUsCore {
  DocumentReferenceContentUsCore._(this._documentReferenceContent);

  factory DocumentReferenceContentUsCore({
    FhirId? fhirId,
    required Attachment attachment,
    Coding? format,
  }) =>
      DocumentReferenceContentUsCore._(DocumentReferenceContent(
          fhirId: fhirId, attachment: attachment, format: format));

  DocumentReferenceContent _documentReferenceContent;
  DocumentReferenceContent get value => _documentReferenceContent;
  FhirId? get fhirId => _documentReferenceContent.fhirId;
  Attachment? get attachment => _documentReferenceContent.attachment;
  Coding? get format => _documentReferenceContent.format;
}

class DocumentReferenceContextUsCore {
  DocumentReferenceContextUsCore._(this._documentReferenceContext);

  factory DocumentReferenceContextUsCore({
    FhirId? fhirId,
    List<Reference>? encounter,
    Period? period,
  }) =>
      DocumentReferenceContextUsCore._(DocumentReferenceContext(
          fhirId: fhirId, encounter: encounter, period: period));

  DocumentReferenceContext _documentReferenceContext;
  DocumentReferenceContext get value => _documentReferenceContext;
  FhirId? get fhirId => _documentReferenceContext.fhirId;
  List<Reference>? get encounter => _documentReferenceContext.encounter;
  Period? get period => _documentReferenceContext.period;
}
