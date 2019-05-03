Pod::Spec.new do |spec|
  spec.name         = 'private-lib'
  spec.version      = '0.0.1'
  spec.platform     = :ios
  spec.summary      = 'Some private library'
  spec.license      = { :type => 'Proprietary', :file => 'License.txt' }
  spec.author       = 'Me'
  spec.source       = { :git => '..', :tag => spec.version.to_s }
  spec.homepage     = 'https://www.site.com'

  spec.default_subspecs = 'primaryModule'
  
  spec.subspec 'primaryModule' do |primarymodule|
      primarymodule.ios.vendored_frameworks  = 'PrivateLibrary.framework'
      primarymodule.public_header_files = 'PrivateLibrary.framework/Headers/*.h'
      primarymodule.library = 'stdc++', 'sqlite3', 'c++', 'iconv', 'z'
      primarymodule.pod_target_xcconfig = {
        'GCC_PREPROCESSOR_DEFINITIONS[arch=arm64]' => '$(inherited)',
        'HEADER_SEARCH_PATHS' => '$(inherited)'
      }
  end
end
