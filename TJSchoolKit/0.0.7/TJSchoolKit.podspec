#
#  Be sure to run `pod spec lint TJSchoolKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = 'TJSchoolKit'
  s.version      = '0.0.7'
  s.summary      = "TJSchoolKit是全民雷锋的Objective-C API Client."

  s.description  = <<-DESC
                        TJSchoolKit是全民雷锋的Objective-C API Client. 主要包含了service和model层.
                   DESC

  s.homepage     = "https://github.com/kingiol/KDCycleBannerView"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "tajiang" => "idbati@icloud.com" }
  # Or just: s.author    = "tajiang"
  # s.authors            = { "tajiang" => "idbati@icloud.com" }
  # s.social_media_url   = "http://twitter.com/tajiang"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "7.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://git.oschina.net/idbati/TJSchoolKit.git", :tag => s.version.to_s }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "TJSchoolKit/*.{h,m}"
  #s.exclude_files = "TJSchoolKit/*+Private.h"
  s.public_header_files = 'TJSchoolKit/*.h'


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  #s.default_subspec = 'TJSchoolKitCore'

  s.subspec 'TJSchoolKitCore' do |base|
    base.requires_arc = true
    base.source_files = 'TJSchoolKit/Core/*.{h,m}'
    base.public_header_files = 'TJSchoolKit/Core/*.h'

    base.dependency "AFNetworking", "~> 2.5"
    base.dependency "ISO8601DateFormatter", "~> 0.7"
    base.dependency "Mantle", "~> 2.0"
    base.dependency "ReactiveCocoa", "~> 2.5"
  end

  s.subspec 'Models' do |m|
  	m.requires_arc = true
  	m.source_files = 'TJSchoolKit/Models/*.{h,m}'
  	m.public_header_files = 'TJSchoolKit/Models/*.h'
  	m.dependency 'TJSchoolKit/TJSchoolKitCore'

  	m.subspec 'User' do |user|
  		user.requires_arc = true
  		user.source_files = 'TJSchoolKit/Models/TJUser.{h,m}'
  		user.public_header_files = 'TJSchoolKit/Models/TJUser.h'
  		user.dependency 'TJSchoolKit/TJSchoolKitCore'
  	end
  end

  s.subspec 'Login' do |login| 
    login.requires_arc = true
    login.source_files = 'TJSchoolKit/Login/*.{h,m}'
    login.public_header_files = 'TJSchoolKit/Login/*.h'
    login.dependency 'TJSchoolKit/TJSchoolKitCore'
    login.dependency 'TJSchoolKit/Models/User'
  end

   s.subspec 'Order' do |order|
  	order.requires_arc = true
  	order.source_files = 'TJSchoolKit/Order/*.{h,m}'
  	order.public_header_files = 'TJSchoolKit/Order/*.h'
  	order.dependency 'TJSchoolKit/TJSchoolKitCore'
    order.dependency 'TJSchoolKit/Models'
  end

   s.subspec 'Setting' do |setting|
  	setting.requires_arc = true
  	setting.source_files = 'TJSchoolKit/Setting/*.{h,m}'
  	setting.public_header_files = 'TJSchoolKit/Setting/*.h'
  	setting.dependency 'TJSchoolKit/TJSchoolKitCore'
    setting.dependency 'TJSchoolKit/Models'
  end
end
