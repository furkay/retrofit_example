import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mock_web_server/mock_web_server.dart';
import 'package:retrofit_example/network/i_client.dart';

late MockWebServer _server;
late IClient _client;

final _headers = {'Content-Type': 'application/json'};
final json = File('test/fake.json').readAsStringSync();
void main() {
  setUp(() async {
    _server = MockWebServer();
    await _server.start();
    final dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true));
    _client = IClient(dio, baseUrl: _server.url);
  });

  tearDown(() {
    _server.shutdown();
  });

  test('test getCoin model ', () async {
    _server.enqueue(
      body: json,
      headers: _headers,
    );
    final coinsResponse = await _client.getCoin('', 'BTC');
    final coinMap = coinsResponse.data;
    expect(coinMap, isNotNull);
    expect(coinMap['BTC'], isNotNull);
    expect(coinsResponse.statusDto.errorCode, 0);
  });
}
