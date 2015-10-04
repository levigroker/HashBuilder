Pod::Spec.new do |s|
  s.name         = "HashBuilder"
  s.version      = "1.0.1"
  s.summary      = "A utility to generate a hash for NSObject subclasses."
  s.description  = <<-DESC
		Used to build a hash result from contributed objects or hashes (presumably
		properties on your object which should be considered in the isEqual: override).
		The intention is for the hash result to be returned from an override to the
		`NSObject` `- (NSUInteger)hash` method.
    DESC
  s.homepage     = "https://github.com/levigroker/HashBuilder"
  s.license      = 'Creative Commons Attribution 3.0 Unported License'
  s.author       = { "Levi Brown" => "levigroker@gmail.com" }
  s.social_media_url = 'https://twitter.com/levigroker'
  s.source       = { :git => "https://github.com/levigroker/HashBuilder.git", :tag => s.version.to_s }
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  s.source_files = 'HashBuilder/**/*.{h,m}'
  s.frameworks = 'Foundation'
  s.requires_arc = true
end
