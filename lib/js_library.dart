@JS()
library script.js;

import 'dart:js_interop';

// This function will do Promise to return something
@JS()
external String jsPromiseFunction(String message);

// This function will open new popup window for given URL.
@JS()
external String jsOpenTabFunction(String url);

///         ^            ^                ^
///      return     functionName       arguments
