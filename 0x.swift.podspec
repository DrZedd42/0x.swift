#
# Be sure to run `pod lib lint 0x.swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = '0x.swift'
  s.version          = '0.1.0'
  s.summary          = 'A Swift library for interacting with the 0x protocol.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A Swift library for interacting with the 0x protocol smart contracts 
                       DESC

  s.homepage         = 'https://github.com/Tokenary/0x.swift'
  s.license          = { :type => 'Apache License 2.0', :file => 'LICENSE' }
  s.author           = { 
    'Igor Shmakov' => 'shmakoff.work@gmail.com',
    'Vadim Koleoshkin' => 'vadim@koleoshkin.com'
  }
  s.source           = { :git => 'https://github.com/Tokenary/0x.swift.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '3.0'

  s.module_name = 'Swifty0x'
  s.swift_version = '4.2'
  s.source_files = '0x.swift/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Web3Swift.io', '~> 0.0.2'

end
