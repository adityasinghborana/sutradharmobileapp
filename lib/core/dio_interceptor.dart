import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';

import 'package:sutradharmobileapp/Constants.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();

  factory DioClient() => _instance;

  late Dio dio;

  /// ✅ OAuth 1.0 Keys
  final String consumerKey = 'ck_cb8a6eccbe16775ad1f23571efdb56654562d95d';
  final String consumerSecret = 'cs_cfbc1ee650c9e380ca9601f7da6df91ebedba44e';

  DioClient._internal() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseurl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );

    /// ✅ Attach OAuth 1.0 Interceptor
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          /// ✅ Generate OAuth 1.0 Signature and Attach It
          final oauthHeaders = _generateOAuthHeaders(options);
          options.headers.addAll(oauthHeaders);
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException e, handler) async {
          if (e.response?.statusCode == 401) {
            print("🔒 Unauthorized - Handle Token Expiration");

            /// ✅ Automatically Retry The Request
            var requestOptions = e.requestOptions;
            var newRequestOptions = await _retryRequest(requestOptions);

            /// ✅ Retry The Request Again
            handler.resolve(await dio.fetch(newRequestOptions));
          } else {
            return handler.next(e);
          }
        },
      ),
    );
  }

  /// ✅ Return Dio Instance
  Dio getInstance() => dio;

  /// ✅ This will regenerate a fresh OAuth signature and reattempt the request
  Future<RequestOptions> _retryRequest(RequestOptions requestOptions) async {
    print("♻️ Retrying API...");

    /// ✅ Regenerate OAuth Headers
    final newHeaders = _generateOAuthHeaders(requestOptions);

    /// ✅ Clear old headers and attach new headers
    requestOptions.headers.clear();
    requestOptions.headers.addAll(newHeaders);

    return requestOptions;
  }

  /// ✅ This function generates OAuth 1.0 HMAC-SHA1 signature like Postman
  Map<String, String> _generateOAuthHeaders(RequestOptions options) {
    final String method = options.method.toUpperCase();
    final String url = options.uri.toString();

    /// ✅ Generate Random Nonce
    String nonce = _generateNonce();

    /// ✅ Generate Timestamp
    String timestamp =
        (DateTime.now().millisecondsSinceEpoch ~/ 1000).toString();

    /// ✅ Build OAuth Parameters
    Map<String, String> parameters = {
      'oauth_consumer_key': consumerKey,
      'oauth_nonce': nonce,
      'oauth_signature_method': 'HMAC-SHA1',
      'oauth_timestamp': timestamp,
      'oauth_version': '1.0'
    };

    /// ✅ Add Query Params or Body Params to Signature
    if (options.queryParameters.isNotEmpty) {
      options.queryParameters.forEach((key, value) {
        parameters[key] = value.toString();
      });
    }

    /// ✅ **SORT PARAMETERS ALPHABETICALLY** (Like Postman)
    final sortedParams = Map.fromEntries(
        parameters.entries.toList()..sort((a, b) => a.key.compareTo(b.key)));

    /// ✅ Build Parameter String (key=value&key=value)
    String parameterString = sortedParams.entries
        .map((e) =>
            '${Uri.encodeQueryComponent(e.key)}=${Uri.encodeQueryComponent(e.value)}')
        .join('&');

    /// ✅ Build Signature Base String
    String signatureBaseString =
        '$method&${Uri.encodeQueryComponent(url)}&${Uri.encodeQueryComponent(parameterString)}';

    /// ✅ Build Signing Key
    String signingKey = '$consumerSecret&';

    /// ✅ Generate HMAC-SHA1 Signature
    String signature = base64Encode(Hmac(sha1, utf8.encode(signingKey))
        .convert(utf8.encode(signatureBaseString))
        .bytes);

    /// ✅ Add Signature to Headers
    parameters['oauth_signature'] = signature;

    /// ✅ Convert Parameters to OAuth Header Format
    String oauthHeader =
        parameters.entries.map((e) => '${e.key}="${e.value}"').join(', ');

    return {'Authorization': 'OAuth $oauthHeader'};
  }

  /// ✅ Generate Random Nonce
  String _generateNonce() {
    final random = Random();
    const charset = 'abcdefghijklmnopqrstuvwxyz0123456789';
    return List.generate(32, (_) => charset[random.nextInt(charset.length)])
        .join();
  }
}
