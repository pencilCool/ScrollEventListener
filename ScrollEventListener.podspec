#
# Be sure to run `pod lib lint ScrollEventListener.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ScrollEventListener'
  s.version          = '0.1.1'
  s.summary          = 'A short description of ScrollEventListener.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: get scroll event on whole app
                       DESC

  s.homepage         = 'https://github.com/pencilCool/ScrollEventListener'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'pencilCool' => 'yhtangcoder@gmail.com' }
  s.source           = { :git => 'https://github.com/pencilCool/ScrollEventListener.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/pencilCool0'

  s.ios.deployment_target = '12.0'
  s.swift_versions = ['5.0']
  s.source_files = 'ScrollEventListener/*'
end
