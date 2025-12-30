## 3.0.2

* Fixed symbol lookup error by switching from static library to opus.framework
* Updated Dart code to explicitly load opus.framework
* Added Swift code to ensure opus symbols are linked into the process
* Added `-all_load` linker flags to force load all symbols from opus framework
* Resolves: "Failed to lookup symbol 'opus_get_version_string': dlsym(RTLD_DEFAULT, opus_get_version_string): symbol not found"
* Resolves: "Failed to lookup symbol 'opus_encoder_get_size': dlsym(RTLD_DEFAULT, opus_encoder_get_size): symbol not found"

## 3.0.1

* Initial macOS implementation with libopus built from source