require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-nordic-dfu-aan-patch"
  s.version      = package['version']
  s.summary      = package['description']

  s.authors      = { "townofdon" => "townofdon@gmail.com" }
  s.homepage     = "https://github.com/townofdon/react-native-nordic-dfu"
  s.license      = "Apache License 2.0"
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/townofdon/react-native-nordic-dfu.git" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'ZIPFoundation', '~> 0.9.8'
  s.dependency 'iOSDFULibrary', '~> 4.4.0'
end
