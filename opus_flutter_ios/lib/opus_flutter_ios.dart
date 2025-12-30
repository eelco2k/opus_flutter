import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:opus_flutter_platform_interface/opus_flutter_platform_interface.dart';

/// An implementation of [OpusFlutterPlatform] for iOS.
class OpusFlutterIOS extends OpusFlutterPlatform {
  /// Opens the static opus library build into this plugin.
  Future<dynamic> load() async {
    // Try to open the framework directly first
    try {
      return DynamicLibrary.open('opus.framework/opus');
    } catch (e) {
      // Fallback to process lookup
      return DynamicLibrary.process();
    }
  }
}