// ignore_for_file: sort_unnamed_constructors_first

// Package imports:
import 'package:fhir/r4.dart';

class EndpointUsCore extends Resource {
  EndpointUsCore._(this._endpoint);

  factory EndpointUsCore({
    String? fhirId,
    FhirMeta? meta,
    Narrative? text,
    List<Resource>? contained,
    List<Identifier>? identifier,
    FhirCode? status,
    required Coding connectionType,
    String? name,
    Reference? managingOrganization,
    List<ContactPoint>? contact,
    Period? period,
    required List<CodeableConcept> payloadType,
    List<FhirCode>? payloadMimeType,
    FhirUrl? address,
    List<String>? header,
  }) =>
      EndpointUsCore._(FhirEndpoint(
        fhirId: fhirId,
        meta: meta,
        text: text,
        contained: contained,
        identifier: identifier,
        status: status,
        connectionType: connectionType,
        name: name,
        managingOrganization: managingOrganization,
        contact: contact,
        period: period,
        payloadType: payloadType,
        payloadMimeType: payloadMimeType,
        address: address,
        header: header,
      ));

  FhirEndpoint _endpoint;
  FhirEndpoint get value => _endpoint;
  @override
  String? get fhirId => _endpoint.fhirId;
  @override
  FhirMeta? get meta => _endpoint.meta;
  @override
  Narrative? get text => _endpoint.text;
  @override
  List<Resource>? get contained => _endpoint.contained;
  List<Identifier>? get identifier => _endpoint.identifier;
  FhirCode? get status => _endpoint.status;
  Coding get connectionType => _endpoint.connectionType;
  String? get name => _endpoint.name;
  Reference? get managingOrganization => _endpoint.managingOrganization;
  List<ContactPoint>? get contact => _endpoint.contact;
  Period? get period => _endpoint.period;
  List<CodeableConcept> get payloadType => _endpoint.payloadType;
  List<FhirCode>? get payloadMimeType => _endpoint.payloadMimeType;
  FhirUrl? get address => _endpoint.address;
  List<String>? get header => _endpoint.header;
}
