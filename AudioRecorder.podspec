#
# Be sure to run `pod lib lint AudioRecorder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AudioRecorder'
  s.version          = '0.0.1'
  s.summary          = 'iOS音频录制'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  iOS使用AVFoundation录制WAV音频
                       DESC

  s.homepage         = 'https://github.com/runryan/AudioRecorder'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ryan' => 'mob_developer@163.com' }
  s.source           = { :git => 'https://github.com/runryan/AudioRecorder.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'AudioRecorder/Classes/**/*'
  s.swift_version = '5.0'
  
  # s.resource_bundles = {
  #   'AudioRecorder' => ['AudioRecorder/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SwiftCommonTools2'
end
