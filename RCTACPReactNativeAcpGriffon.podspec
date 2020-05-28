
Pod::Spec.new do |s|
  s.name         = "RCTACPReactNativeAcpGriffon"
  s.version      = "1.0.0"
  s.summary      = "RCTACPReactNativeAcpGriffon"
  s.description  = <<-DESC
                  RCTACPReactNativeAcpGriffon
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-acp-griffon"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/github_account/react-native-acp-griffon", :tag => "master" }
  s.source_files  = 'ios/src/**/*.{h,m}','ios/libs/**/*.{h,m}'
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"
  s.vendored_libraries = 'ios/libs/libACPGriffon_iOS.a'

end

  