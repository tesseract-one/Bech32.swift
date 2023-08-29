Pod::Spec.new do |s|
  s.name             = 'Bech32.swift'
  s.version          = '999.99.9'
  s.summary          = 'Bech32, Bech32m and SegWit library for Swift.'

  s.description      = <<-DESC
  Bech32, Bech32m and SegWit implementation for Swift. Supports all Apple platforms and Linux.
                       DESC

  s.homepage         = 'https://github.com/tesseract-one/Bech32.swift'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tesseract Systems, Inc.' => 'info@tesseract.one' }
  s.source           = { :git => 'https://github.com/tesseract-one/Bech32.swift.git', :tag => s.version.to_s }

  s.swift_version    = '5.4'

  base_platforms     = { :ios => '11.0', :osx => '10.13', :tvos => '11.0' }
  s.platforms        = base_platforms.merge({ :watchos => '6.0' })

  s.module_name      = 'Bech32'
  
  s.source_files     = 'Sources/*.swift'
 
  s.test_spec 'Tests' do |ts|
    ts.platforms = base_platforms
    ts.source_files = 'Tests/Bech32Tests/*.swift'
  end
end
