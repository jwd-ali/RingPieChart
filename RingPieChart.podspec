
Pod::Spec.new do |s|
  s.name         = "RingPieChart"
  s.version      = "2.0.0"
  s.summary      = "RingPieChart framework"
  s.description  = <<-DESC
                  RingPieChart framework pod can create beautiful Ring Chart showing different colors and percentages of any data. its easy to use and efficient
                   DESC
  s.homepage     = "https://github.com/jwd-ali/IOS-Portfolio"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Jawad Ali" => "L060214@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/jwd-ali/RingPieChart.git", :tag => "#{s.version}" }

  s.source_files = "RingPieChart/**/*.{h,m,swift}"
  s.requires_arc = true
  s.swift_version = "5.0"
  s.frameworks = "XCTest"
  
end
