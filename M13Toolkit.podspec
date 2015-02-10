#
#  Be sure to run `pod spec lint M13Toolkit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.name         = "M13Toolkit"
  s.version      = "1.0.5"
  s.summary      = "Some useful categories and classes."

  s.description  = <<-DESC
                   These are a bunch of class categories, and classes that I have created that I use in multiple projects.
                   DESC

  s.homepage     = "https://github.com/Marxon13/M13Toolkit"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

 s.license      = {:type => 'MIT',
:text => <<-LICENSE
Copyright (c) 2015 Brandon McQuilkin

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

LICENSE
}


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.author             = { "Marxon13" => "brandon.mcquilkin@gmail.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.ios.deployment_target = "7.0"
  s.osx.deployment_target = "10.9"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.source       = { :git => "https://github.com/Marxon13/M13Toolkit.git", :tag => "v1.0.5" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any h, m, mm, c & cpp files. For header
  #  files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  s.source_files  = "Common Classes/**/*.{h,m}"
  s.ios.source_files = "iOS Classes/**/*.{h,m}"
  s.osx.source_files = "OS X Classes/**/*.{h,m}"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  s.frameworks = "Foundation"
  s.ios.framework = "UIKit"
  s.osx.framework = "AppKit"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"


  # ――― Subspecs ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

    s.subspec "NSArray" do |sp|
        sp.source_files = "Common Classes/Foundation/NSArray/*.{h,m}"
        sp.frameworks = "CoreGraphics"
    end

    s.subspec "NSAttributedString" do |sp|
        sp.source_files = "Common Classes/Foundation/NSAttributedString/*.{h,m}"
        sp.frameworks = "CoreGraphics"
    end

    s.subspec "NSData" do |sp|
        sp.source_files = "Common Classes/Foundation/NSData/*.{h,m}"
        sp.frameworks = "CommonCrypto"
    end

    s.subspec "NSDictionary" do |sp|
        sp.source_files = "Common Classes/Foundation/NSDictionary/*.{h,m}"
    end

    s.subspec "NSFileManager" do |sp|
        sp.source_files = "Common Classes/Foundation/NSFileManager/*.{h,m}"
    end

    s.subspec "NSLocale" do |sp|
        sp.source_files = "Common Classes/Foundation/NSLocale/*.{h,m}", "Common Classes/Foundation/NSString/NSString+Formatting.{h,m}"
    end

    s.subspec "NSObject" do |sp|
        sp.source_files = "Common Classes/Foundation/NSObject/*.{h,m}"
    end

    s.subspec "NSString" do |sp|
        sp.source_files = "Common Classes/Foundation/NSString/*.{h,m}"
        sp.frameworks = "CommonCrypto"
    end

    s.subspec "UIFont" do |sp|
        sp.ios.source_files = "iOS Classes/UIKit/UIFont+List.{h,m}"
        sp.osx.source_files = "OS X Classes/NSObject+CocoapodsFix.{h,m}"
    end

    s.subspec "UIKitBatchUpdates" do |sp|
        sp.ios.source_files = "iOS Classes/UIKit/UICollectionView+AutoBatchUpdates.{h,m}", "iOS Classes/UIKit/UITableView+AutoBatchUpdates.{h,m}", "Common Classes/Foundation/NSArray/NSArray+Changes.{h,m}"
        sp.osx.source_files = "OS X Classes/NSObject+CocoapodsFix.{h,m}"
    end

end
