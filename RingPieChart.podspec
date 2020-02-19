
Pod::Spec.new do |spec|
  spec.name         = "RingPieChart"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of RingPieChart."
  spec.description  = <<-DESC
                   DESC

  spec.homepage     = "http://EXAMPLE/RingPieChart"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  spec.license      = "MIT (example)"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  spec.author             = { "jawad" => "jawad@digitify.com" }
  # Or just: spec.author    = "jawad"
  # spec.authors            = { "jawad" => "jawad@digitify.com" }
  # spec.social_media_url   = "https://twitter.com/jawad"

  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
 
  spec.source       = { :git => "http://EXAMPLE/RingPieChart.git", :tag => "#{spec.version}" }

  spec.source_files  = "Classes", "DemoApp/**/*.{h,m,swift}"
  
  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"
  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # spec.frameworks = "SomeFramework", "AnotherFramework"
end
