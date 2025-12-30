import Cocoa
import FlutterMacOS

// Ensure opus symbols are loaded into the process by referencing them
@_silgen_name("opus_get_version_string")
func opus_get_version_string() -> UnsafePointer<CChar>

public class OpusFlutterMacosPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    // Reference opus to ensure it's linked
    _ = opus_get_version_string()
  }
}