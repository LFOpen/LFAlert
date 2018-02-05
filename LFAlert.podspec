#
#  Be sure to run `pod spec lint LFALert.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "LFAlert"
  s.version      = "1.0.1"
  s.summary      = "更加方便的显示提示框"
  s.description  = <<-DESC
		集合UIAlertController和UIAlertView, 使显示简单的提示框更加方便
                   DESC

  s.homepage     = "https://github.com/LFOpen/LFAlert"
  s.license      = "MIT"
  s.author             = { "archerLj" => "lj0011977@163.com" }
  s.source       = { :git => "https://github.com/LFOpen/LFAlert.git", :tag => "#{s.version}" }
  s.platform     = :ios
  s.source_files  = "LFAlert/LFAlert/*.{h,m}"
  s.requires_arc = true

end
