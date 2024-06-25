import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:logger/logger.dart';

class HttpLogger extends http.BaseClient {
  final http.Client _inner;
  final Logger logger = Logger(
    printer: PrettyPrinter(),
  );
  HttpLogger(this._inner);
  @override
  Future<StreamedResponse> send(http.BaseRequest request) async {
    logger.i('**** New HTTP Request ****', stackTrace: StackTrace.empty);
    logger.i('Request URL: ${request.url}', stackTrace: StackTrace.empty);
    logger.i('Request Method: ${request.method}', stackTrace: StackTrace.empty);
    if (request.headers.isNotEmpty) {
      logger.d('Headers: ${request.headers}', stackTrace: StackTrace.empty);
    }
    if (request is http.Request) {
      logger.d('Body: ${request.body}', stackTrace: StackTrace.empty);
    }
    final response = await _inner.send(request);

    logger.i('**** New HTTP Response ****', stackTrace: StackTrace.empty);
    List<int> data = await response.stream.toBytes();
    String body = utf8.decode(data);
    logger.i('Response Url: ${response.request?.url}',
        stackTrace: StackTrace.empty);
    logger.i('Response status code: ${response.statusCode}',
        stackTrace: StackTrace.empty);
    if (response.headers.isNotEmpty) {
      logger.d('Headers: ${response.headers}', stackTrace: StackTrace.empty);
    }
    logger.d('Response body: $body', stackTrace: StackTrace.empty);
    // Create a new StreamedResponse with a ByteStream
    http.StreamedResponse newResponse = http.StreamedResponse(
      ByteStream.fromBytes(data),
      response.statusCode,
      headers: response.headers,
      isRedirect: response.isRedirect,
      persistentConnection: response.persistentConnection,
      reasonPhrase: response.reasonPhrase,
      request: response.request,
    );
    return newResponse;
  }
}
