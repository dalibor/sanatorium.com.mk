$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gallery_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gallery_engine"
  s.version     = GalleryEngine::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of GalleryEngine."
  s.description = "TODO: Description of GalleryEngine."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.0.rc6"
  s.add_dependency 'jquery-rails'
  s.add_dependency 'haml'
  s.add_dependency 'hpricot'
  s.add_dependency 'ruby_parser'
  s.add_dependency 'inherited_resources'
  s.add_dependency 'carrierwave'

  s.add_development_dependency "sqlite3"
end
