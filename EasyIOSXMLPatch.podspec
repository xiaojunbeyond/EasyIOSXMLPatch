#
# Be sure to run `pod lib lint EasyIOSXMLPatch.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "EasyIOSXMLPatch"
  s.version          = "0.1.0"
  s.summary          = "EasyIOS patch  description of EasyIOSXMLPatch."
  s.description      = "A new generation of development framework based on Model-View-ViewModel"
  s.homepage         = "https://github.com/xiaojunbeyond/EasyIOSXMLPatch"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "xiaojunkingwolf" => "xiaojunkingwolf@aliyun.com" }
  s.source           = { :git => "https://github.com/xiaojunbeyond/EasyIOSXMLPatch.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  #s.source_files = 'Pod/Classes/**/*'
  #s.resource_bundles = {
  #  'EasyIOSXMLPatch' => ['Pod/Assets/*.png']
  #}

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.framework             = "CoreFoundation","Foundation","CoreGraphics","Security","UIKit"
  s.library             = "z.1.1.3","stdc++","sqlite3"
  s.subspec 'Easy' do |sp|
    sp.source_files = '*.{h,m,mm}','Pod/Classes/Easy/**/*.{h,m,mm}','Pod/Classes/Extend/**/*.{h,m,mm}'
    sp.resources   = "Pod/Classes/Extend/**/*.{png}"
    sp.requires_arc = true
    sp.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz, $(SDKROOT)/usr/include/libxml2', 'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++0x', 'CLANG_CXX_LIBRARY' => 'libstdc++', 'CLANG_WARN_DIRECT_OBJC_ISA_USAGE' => 'YES'}
    sp.dependency 'ReactiveCocoa'
    sp.dependency 'MBProgressHUD'
    sp.dependency 'MojoDatabase'
    sp.dependency 'TMCache'
    sp.dependency 'UIActivityIndicator-for-SDWebImage'
    sp.dependency 'AFNetworking'
    sp.dependency 'GCDObjC'
    sp.dependency 'FLKAutoLayout','0.1.1'
    sp.dependency 'FontIcon'
    sp.prefix_header_contents = '#import "swift-bridge.h"'
  end
end
