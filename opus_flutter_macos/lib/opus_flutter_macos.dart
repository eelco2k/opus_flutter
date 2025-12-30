import 'dart:async';
import 'dart:ffi';
import 'dart:io';

import 'package:opus_flutter_platform_interface/opus_flutter_platform_interface.dart';

/// An implementation of [OpusFlutterPlatform] for macOS.
class OpusFlutterMacOS extends OpusFlutterPlatform {
  /// Opens the opus library for macOS.
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