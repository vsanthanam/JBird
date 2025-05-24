Pod::Spec.new do |s|
  s.name             = 'JBird'
  s.version          = '0.0.3'
  s.summary          = 'JBird Swift library'
  s.description      = 'A blazing fast, type-safe library for working with JSON in Swift'

  s.homepage         = 'https://www.usejbird.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Varun Santhanam' => 'talkto@vsanthanam.com' }
  s.source           = { :git => "https://github.com/vsanthanam/JBird.git", :tag => s.version }

  s.ios.deployment_target = '16.0'
  s.osx.deployment_target = '13.0'
  s.watchos.deployment_target = '9.0'
  s.tvos.deployment_target = '16.0'
  s.visionos.deployment_target = '1.0'
  
  s.swift_version = '6.1'

  s.subspec 'JBird' do |core|
    core.source_files = 'JBird/**/*.swift'
    core.dependency 'JBird/JBirdParser'
  end

  s.subspec 'JBirdParser' do |parser|
    parser.source_files = 'JBirdParser/**/*.{h,c}'
    parser.public_header_files = 'JBirdParser/include/*.h'
  end

  s.pod_target_xcconfig = { 'CLANG_CXX_LANGUAGE_STANDARD' => 'c11' }

  s.compiler_flags = '-Xswiftc -enable-upcoming-feature -Xswiftc StrictConcurrency=complete'
end 