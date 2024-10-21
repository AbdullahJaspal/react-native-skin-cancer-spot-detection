require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-skin-cancer-spot-detection"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  A React Native module for detecting skin cancer spots using Vision Camera.
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-skin-cancer-spot-detection"
  s.license      = "MIT"
  s.authors      = { "Your Name" => "abdullahJaaspal@email.com" }
  
  s.platforms    = { :ios => "10.0" } # Updated minimum version if needed
  s.source       = { :git => "https://github.com/github_account/react-native-skin-cancer-spot-detection.git", :tag => "#{s.version}" }

  # Specify the source files for your module
  s.source_files = "ios/**/*.{h,c,cc,cpp,m,mm,swift}"
  s.requires_arc = true

  # Add dependencies
  s.dependency "React"
  s.dependency "react-native-vision-camera" # Ensure correct dependency name

  # Add any other dependencies you need here
end
