import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:michelle_plugin/michelle_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('michelle_plugin');

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
    expect(await MichellePlugin.platformVersion, '42');
  });
}
