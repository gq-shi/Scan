Pod::Spec.new do |s|
  s.name         = "GQScan"
  s.version      = "0.0.1"
  s.summary      = "iOS扫码"
  s.description  = <<-DESC
                扫码方便集成
                   DESC
  s.homepage     = "https://github.com/gq-shi/Scan"
  s.license      = "MIT (LICENSE)"
  s.author             = { "gqshi" => "shiguoqiangit@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/gq-shi/Scan.git", :tag => "#{s.version}" }

  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.resources = "Resources/*.*"
  # s.frameworks = "SomeFramework", "AnotherFramework"
  # s.libraries = "iconv", "xml2"
  s.requires_arc = true
  # s.dependency "JSONKit", "~> 1.4"

end
