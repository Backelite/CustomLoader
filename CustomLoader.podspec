#
#  Be sure to run `pod spec lint CustomLoader.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "CustomLoader"
  s.version      = "1.1.0"
  s.summary      = "Custom loader system for iOS"
  s.description  = <<-DESC
                    Custom loader system for iOS that provide default loaders
                    and a way to display a custom loader
                   DESC

  s.homepage     = "https://github.com/Backelite/CustomLoader"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "MUISEROUX Fritzgerald" => "f.muiseroux@gmail.com" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => "https://github.com/Backelite/CustomLoader.git", :tag => "1.1.0" }
  s.source_files  = "Source/", "Source/**/*.{h,m}"

end
