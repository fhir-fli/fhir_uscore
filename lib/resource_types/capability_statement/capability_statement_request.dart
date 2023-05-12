// Package imports:
import 'package:fhir/r4.dart';
import 'package:fhir_at_rest/r4.dart';
import 'package:http/http.dart';

Future<Resource?> capabilityStatementRequest(
  Uri base, {
  Map<String, String>? headers,
  Client? client,
  List<String> parameters = const <String>[],
}) async {
  final FhirRequest request = FhirRequest.capabilities(
    base: base,
    parameters: parameters,
    client: client,
  );
  final Map<String, String> finalHeaders = headers ?? <String, String>{};
  if (!finalHeaders.keys.contains('Content-Type')) {
    finalHeaders['Content-Type'] = 'application/fhir+json';
  }
  return request.request(headers: finalHeaders);
}
