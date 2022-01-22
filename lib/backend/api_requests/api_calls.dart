import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class LightKeyAPICall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'LightKeyAPI',
      apiUrl:
          'https://apikey-v2-34ero33i3xqekd48se6lq0scv1emnylbpumik9s88mki:a4c9aee5935352b849ffc3df9180827a@ed6718b2-b67e-416d-83ec-ae893c730b25-bluemix.cloudantnosqldb.appdomain.cloud/lightkey/_all_docs',
      callType: ApiCallType.GET,
      headers: {
        'apikey-a318f20246274b9bb96f20724bf6b274':
            'a768413150722d839275209aee15d5c30810b5de',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic resultsID(dynamic response) => getJsonField(
        response,
        r'''$..rows..*.*''',
      );
}

class LightkeyDBaCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'lightkeyDBa',
      apiUrl:
          'https://ed6718b2-b67e-416d-83ec-ae893c730b25-bluemix:d5736b557ef5faccc2191d4362a276a826d183f4d4c2a16a67ad29f8c4a4292f@ed6718b2-b67e-416d-83ec-ae893c730b25-bluemix.cloudantnosqldb.appdomain.cloud/lightkey/_changes',
      callType: ApiCallType.GET,
      headers: {
        'ed6718b2-b67e-416d-83ec-ae893c730b25-bluemix':
            'd5736b557ef5faccc2191d4362a276a826d183f4d4c2a16a67ad29f8c4a4292f',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic resultsID(dynamic response) => getJsonField(
        response,
        r'''$results..changes..rev''',
      );
}

class LightKeyAllCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'LightKeyAll',
      apiUrl:
          'https://ed6718b2-b67e-416d-83ec-ae893c730b25-bluemix:d5736b557ef5faccc2191d4362a276a826d183f4d4c2a16a67ad29f8c4a4292f@ed6718b2-b67e-416d-83ec-ae893c730b25-bluemix.cloudantnosqldb.appdomain.cloud/lightkey/_all_docs?include_docs=true',
      callType: ApiCallType.GET,
      headers: {
        'ed6718b2-b67e-416d-83ec-ae893c730b25-bluemix':
            'd5736b557ef5faccc2191d4362a276a826d183f4d4c2a16a67ad29f8c4a4292f',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic rowsDoc(dynamic response) => getJsonField(
        response,
        r'''$rows..doc''',
      );
}

class FullDBCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'FullDB',
      apiUrl:
          'https://ed6718b2-b67e-416d-83ec-ae893c730b25-bluemix.cloudant.com/lightkey/_all_docs?include_docs=true',
      callType: ApiCallType.GET,
      headers: {
        'ed6718b2-b67e-416d-83ec-ae893c730b25-bluemix':
            'd5736b557ef5faccc2191d4362a276a826d183f4d4c2a16a67ad29f8c4a4292f',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic jPEGs(dynamic response) => getJsonField(
        response,
        r'''$..rows..doc..payload''',
      );
}
