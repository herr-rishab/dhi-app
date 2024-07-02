import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ValidateOTPCall {
  static Future<ApiCallResponse> call({
    String? verificationID = '',
    String? code = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'validateOTP',
      apiUrl:
          'https://cpaas.messagecentral.com/verification/v2/verification/validateOtp',
      callType: ApiCallType.GET,
      headers: {
        'authToken':
            'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJDLTlEQTA5QjYzN0UxNTRGNCIsImlhdCI6MTcxOTE1NTkyNywiZXhwIjoxODc2ODM1OTI3fQ.6gompZnPYtUpchZ798MyQLoUydGqEFM5RED4aJytSutlYrcaeklZrTXAVIhen658BicBpPMnIlc3H-K-0cgnJA',
      },
      params: {
        'countryCode\t': "91",
        'mobileNumber': "9728003433",
        'verificationId': verificationID,
        'customerId': "C-9DA09B637E154F4",
        'code': code,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? verification(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.verificationStatus''',
      ));
}

class SendOTPCall {
  static Future<ApiCallResponse> call({
    String? mobileNumber = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'sendOTP',
      apiUrl:
          'https://cpaas.messagecentral.com/verification/v2/verification/send',
      callType: ApiCallType.POST,
      headers: {
        'authToken':
            'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJDLTlEQTA5QjYzN0UxNTRGNCIsImlhdCI6MTcxOTE1NTkyNywiZXhwIjoxODc2ODM1OTI3fQ.6gompZnPYtUpchZ798MyQLoUydGqEFM5RED4aJytSutlYrcaeklZrTXAVIhen658BicBpPMnIlc3H-K-0cgnJA',
      },
      params: {
        'countryCode': "91",
        'customerId': "C-9DA09B637E154F4",
        'flowType': "SMS",
        'mobileNumber': mobileNumber,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? verificationID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.verificationId''',
      ));
}

class SendCall {
  static Future<ApiCallResponse> call({
    int? phoneNumber,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'send',
      apiUrl:
          'https://qzea3erectdo6tpifklvfwqysa0ztiim.lambda-url.ap-south-1.on.aws/',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'phoneNumber': phoneNumber,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
