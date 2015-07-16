Pod::Spec.new do |s|
  s.name             = "TestPrivateRepo"
  s.version          = "0.0.1"
  s.summary          = "测试Cocoapods private pods的demo"
  s.license          = 'MIT'
  s.author           = { "idbati" => "idbati@icloud.com" }
  s.source           = { :git => "https://git.oschina.net/idbati/TestPrivateRepo.git", :tag => s.version }

  s.homepage         = "https://github.com/kingiol/KDCycleBannerView"
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TestPrivateRepo/*.{h,m}'
  s.public_header_files = 'TestPrivateRepo/*.h'
  #s.resources = 'Pod/Assets/*'

  s.frameworks = 'Foundation'
  s.module_name = 'TestPrivateRepo'
end