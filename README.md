# LFAlert
警告框，集合UIAlertController &amp;&amp; UIALertView

# Cocoapods集成
因为使用了私有库，所以需要同时指定私有库和公有cocoaPods库的地址
```
source 'https://github.com/LFOpen/LFOpen.git'
source 'https://github.com/CocoaPods/Specs.git'
use_frameworks!

target 'MainProject' do
  pod 'LFAlert'
end
```
