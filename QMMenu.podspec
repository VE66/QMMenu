#
# Be sure to run `pod lib lint QMMenu.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'QMMenu'
  s.version          = '0.1.0'
  s.summary          = 'A short description of QMMenu.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "Menu 自定义"

  s.homepage         = 'https://github.com/VE66/QMMenu'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'VE66' => '942914231@qq.com' }
  s.source           = { :git => 'https://bitbucket.org/7moorsdk/qmmeun.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform = :ios, '11.0'
  s.swift_version = '5.0'
#  s.source_files = 'QMMenu/Classes/**/*'
  s.vendored_frameworks = 'QMMenu/Classes/QMMenuView.framework'
  
  # s.resource_bundles = {
  #   'QMMenu' => ['QMMenu/Assets/*.png']
  # }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 x86_64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'SnapKit'
end
