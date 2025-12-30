## 3.0.2

* Fixed symbol lookup error by ensuring all opus symbols are loaded at plugin initialization
* Updated Dart code to explicitly load opus.framework
* Added Swift code to reference opus symbols during plugin registration
* Added `-all_load` linker flags to force load all symbols from opus framework
* Resolves: "Failed to lookup symbol 'opus_get_version_string': dlsym(RTLD_DEFAULT, opus_get_version_string): symbol not found"
* Resolves: "Failed to lookup symbol 'opus_encoder_get_size': dlsym(RTLD_DEFAULT, opus_encoder_get_size): symbol not found"

## 3.0.1

* Using new opus.xcframework


## 3.0.0

* Adopt `opus_flutter_platform_interface 3.0.0`


## 2.0.0

* Initial release in federal plugin structure