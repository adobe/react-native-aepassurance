require "json"
package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RCTACPGriffon"
  s.version      = package["version"]
  s.summary      = "Griffon library for Adobe Experience Cloud SDK. Written and Supported by Adobe."
  s.author       = "Adobe Mobile SDK Team"
  s.homepage     = "https://github.com/adobe/react-native-acpgriffon"
  s.license      = "Apache 2.0 License"
  s.platform     = :ios, "10.0"
  
  s.source       = { :git => "https://github.com/adobe/react-native-acpgriffon", :tag => "#{s.version}" }
  s.source_files  = 'ios/src/**/*.{h,m}','ios/libs/**/*.{h,m}'
  s.requires_arc = true

  s.dependency "React"
  s.frameworks = 'UIKit', 'SystemConfiguration', 'WebKit'
  s.vendored_libraries = 'ios/libs/libACPGriffon_iOS.a'

end

  