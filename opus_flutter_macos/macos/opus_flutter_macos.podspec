#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint opus_flutter_macos.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'opus_flutter_macos'
  s.version          = '3.0.2'
  s.summary          = 'libopus wrappers for flutter in macOS.'
  s.description      = <<-DESC
  libopus wrappers for flutter in macOS.
                       DESC
  s.homepage         = 'https://epnw.eu'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'EPNW GmbH' => 'contact@epnw.eu' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'FlutterMacOS'
  s.platform = :osx, '13.0'
  s.vendored_frameworks = 'Frameworks/opus.framework'
  
  s.pod_target_xcconfig = { 
    'DEFINES_MODULE' => 'YES',
    'OTHER_LDFLAGS' => '-all_load'
  }
  s.user_target_xcconfig = {
    'OTHER_LDFLAGS' => '-all_load'
  }
  s.swift_version = '5.1'
end