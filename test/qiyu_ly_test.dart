import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qiyu_ly/qiyu_ly.dart';

void main() {
  const MethodChannel channel = MethodChannel('qiyu_ly');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await QiyuLy.platformVersion, '42');
  });
}
