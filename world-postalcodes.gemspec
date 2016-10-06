lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yard'

Gem::Specification.new do |s|
  s.name        = 'world-postalcodes'
  s.version     = '1.0.0'
  s.date        = '2016-10-04'
  s.summary     = "Gem to find details from postal_code inside India & USA"
  s.description = "A gem to search details like city, state, state_code, country, timezone, latitude, longitude from postal code only in India & USA. We will be adding details for more countries soon"
  s.authors     = ["Milind Patel"]
  s.email       = '66.milind@gmail.com'
  s.files       = ["lib/world_postalcodes.rb"]
  s.homepage    = 'http://rubygems.org/gems/world-postalcodes'
  s.license     = 'MIT'
  s.files         = ["lib/data/postal_codes.yml","LICENSE.txt", "README.md", "lib/world_postalcodes.rb", "world-postalcodes.gemspec"]#`git ls-files`.split($RS)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.metadata["yard.run"] = "yri"
  s.post_install_message = "Thanks for installing world-postalcodes!"
  s.required_ruby_version = '>= 1.8.6'
  s.extra_rdoc_files = ['README.md']
  s.homepage = 'https://github.com/milind-patel/world-postalcodes'
  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rake','~> 0'
end
