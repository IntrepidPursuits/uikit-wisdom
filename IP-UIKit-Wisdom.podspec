Pod::Spec.new do |s|
  s.name          = "IP-UIKit-Wisdom"
  s.version       = "0.0.1"
  s.summary       = "A bag of internal helper libraries and categories around UIKit"
  s.description   = <<-DESC
                    DESC
  s.homepage      = "https://github.com/IntrepidPursuits/uikit-wisdom"
  s.authors       = { "Ying Quan Tan" => "ying@intrepid.io" }
  s.source        = { :git => "git@github.com:IntrepidPursuits/uikit-wisdom.git", :tag => "0.0.1" }
  s.source_files  = "src/**/*.{h,m}"
  s.exclude_files = "tests/**/*"
  s.framework     = "UIKit"
end
