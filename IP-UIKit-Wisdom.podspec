Pod::Spec.new do |s|
  s.name          = "IP-UIKit-Wisdom"
  s.version       = "0.0.3"
  s.summary       = "A bag of internal helper libraries and categories around UIKit"
  s.description   = <<-DESC
                    A bag of internal helper libraries and categories around UIKit, written by the developers of Intrepid Pursuits.
                    DESC
  s.homepage      = "https://github.com/IntrepidPursuits/uikit-wisdom"
  s.license       = "MIT"
  s.authors       = { "Ying Quan Tan" => "ying@intrepid.io" }
  s.source        = { :git => "https://github.com/IntrepidPursuits/uikit-wisdom.git", :tag => "v0.0.3" }
  s.source_files  = "src/**/*.{h,m}"
  s.exclude_files = "tests/**/*"
  s.platform      = "ios"
  s.framework     = "UIKit"
end
