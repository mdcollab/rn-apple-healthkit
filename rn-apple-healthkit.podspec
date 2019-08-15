require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name            = pjson["name"]
  s.version         = pjson["version"]
  s.homepage        = "https://github.com/mdcollab/rn-apple-healthkit"
  s.summary         = pjson["description"]
  s.license         = pjson["license"]
  s.author          = { "Carbon Health" => "murat@carbonhealth.com" }

  s.requires_arc   = true
  s.platform       = :ios, '9.0'

  s.source          = { :git => "https://github.com/mdcollab/rn-apple-healthkit", :tag => "v#{s.version}" }
  s.source_files    = 'RCTAppleHealthKit/*.{h,m}'

  s.dependency 'React'
end
