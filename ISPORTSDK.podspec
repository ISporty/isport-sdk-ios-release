Pod::Spec.new do |spec|

  spec.name         = "ISPORTSDK"
  spec.version      = ENV['LIB_VERSION'] || "0.0.1"
  spec.summary      = "ISport Sdk iOS"
  spec.description  = <<-DESC
                        ISport SDK iOS
                   DESC

  spec.homepage     = "https://wiinvent.tv"
  spec.license      = { :type => 'Copyright', :text => 'Copyright (C) 2022 by iSport, Inc' }
  spec.author       = { "iSport" => "support@wiinvent.tv" }

  spec.vendored_frameworks = "ISPORTSDK.xcframework"
  spec.platform = :ios
  spec.ios.deployment_target = "11.0"
  spec.swift_version = ["4.0", "4.2", "5.0"]
  spec.source = { :git => "https://github.com/ISporty/isport-sdk-ios-release.git", :tag => "v#{spec.version.to_s}" }
spec.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'ONLY_ACTIVE_ARCH' => 'YES'}
  spec.user_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'ONLY_ACTIVE_ARCH' => 'YES'}
  spec.frameworks = 'AVFoundation', 'UIKit', 'WebKit'
end
