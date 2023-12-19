// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:flutter_web_error/js_helper_web.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final JSHelper jsHelper = JSHelper();
    try {
      final platform = jsHelper.getPlatformFromJS();
      print(platform);
    } catch (e) {}
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello World!'),
              ElevatedButton(
                onPressed: () {
                  try {
                    // Call a JavaScript function using dart:js
                    js.context.callMethod('yourJavaScriptFunction', []);
                  } catch (e) {
                    print('Error calling JavaScript function: $e');
                  }
                },
                child: const Text(
                  'Call js',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  try {
                    final JSHelper jsHelper = JSHelper();
                    final platform = jsHelper.getPlatformFromJS();
                    print('platform $platform');
                  } catch (e) {
                    print('Error calling getPlatformFromJS function: $e');
                  }
                },
                child: const Text(
                  'Call js with interop',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
