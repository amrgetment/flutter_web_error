// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:js' as js;
import 'dart:js_util';

import 'js_library.dart';

class JSHelper {
  /// This method name inside 'getPlatform' should be same in JavaScript file
  String getPlatformFromJS() {
    return js.context.callMethod('getPlatform');
  }

  Future<String> callJSPromise() async {
    return await promiseToFuture(jsPromiseFunction("I am back from JS"));
  }

  Future<String> callOpenTab() async {
    return await promiseToFuture(jsOpenTabFunction('https://google.com/'));
  }
}
