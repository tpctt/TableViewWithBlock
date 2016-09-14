Pod::Spec.new do |s|
  s.name                  = "TableViewWithBlock"
  s.version               = "1.0"
  s.summary               = "使用 block 使用 UITableView ,copy 的"
  s.homepage              = "http://https://github.com/timRabbit/TableViewWithBlock"
  s.social_media_url      = "http://https://github.com/timRabbit/TableViewWithBlock"
  s.platform     = :ios,'6.0'
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { " tim" => "491590253@qq.com" }
  s.source                = { :git => "https://github.com/timRabbit/TableViewWithBlock.git",:tag => "1.0" }
  s.ios.deployment_target = "6.0"
  s.requires_arc          = true
  s.framework             = "CoreFoundation","Foundation","CoreGraphics","Security","UIKit"
  s.library		= "z.1.1.3","stdc++","sqlite3"
  s.subspec 'TableViewWithBlock' do |sp|
    sp.source_files = 'TableViewWithBlock/*.{h,m,mm}'
  #  sp.resources   = "Extend/**/*.{png}"
    sp.requires_arc = true
    sp.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libz, $(SDKROOT)/usr/include/libxml2', 'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++0x', 'CLANG_CXX_LIBRARY' => 'libstdc++', 'CLANG_WARN_DIRECT_OBJC_ISA_USAGE' => 'YES'}
   
  #  sp.dependency 'FontIcon'
   # sp.prefix_header_contents = '#import "EasyIOS.h"'
  end
end
