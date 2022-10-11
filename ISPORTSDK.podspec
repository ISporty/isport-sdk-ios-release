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
  spec.frameworks = 'AVFoundation', 'UIKit', 'WebKit'
end
