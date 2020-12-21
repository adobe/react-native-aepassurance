require "json"
package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RCTAEPAssurance"
  s.version      = package["version"]
  s.summary      = "AEPAssurance library for Adobe Experience Cloud SDK. Written and Supported by Adobe."
  s.author       = "Adobe Mobile SDK Team"
  s.homepage     = "https://github.com/adobe/react-native-aepassurance"
  s.license      = "Apache 2.0 License"
  s.platform     = :ios, '10.0'

  s.source       = { :git => "https://github.com/adobe/react-native-aepassurance", :tag => "#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  s.frameworks = 'UIKit', 'SystemConfiguration', 'WebKit'
  s.library = 'sqlite3.0', 'c++', 'z'
  s.vendored_frameworks = 'ios/libs/AEPAssurance.xcframework'

end
