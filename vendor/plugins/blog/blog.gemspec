# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "blog"
  s.summary = "Insert Blog summary."
  s.description = "Insert Blog description."
  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.version = "0.0.1"

  s.add_dependency "rails", "~> 3.1.0.rc8"
  s.add_dependency 'jquery-rails'
  s.add_dependency 'haml'
  s.add_dependency 'hpricot'
  s.add_dependency 'ruby_parser'
  s.add_dependency 'inherited_resources'

  s.add_development_dependency "sqlite3"
end
