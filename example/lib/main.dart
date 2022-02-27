import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:michelle_plugin/michelle_plugin.dart';
import 'package:michelle_plugin/model/m_event_type.dart';
import 'package:michelle_plugin_example/test_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'M Plugin App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
    MichellePlugin.registerWEventHandler(EventHandler((event) {
      debugPrint('ttm eventType${event?.type == MEventType.url}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('【CLICK】 ${event?.type} | ${event?.arguments} | ${event?.eventElse}'),
        ),
      );
    }));
  }

  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await MichellePlugin.platformVersion ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Text('Running on: $_platformVersion\n'),
            ),
            GestureDetector(
              onTap: () {
                debugPrint('ttm you click button');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TestPage()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.lightBlueAccent),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: const Text(
                  'open page',
                  style: TextStyle(color: Colors.lightBlueAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
