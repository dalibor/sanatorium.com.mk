# Provide a simple gemspec so you can easily use your
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "blog"
  s.summary = "Insert Blog summary."
  s.description = "Insert Blog description."
  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.version = "0.0.1"
  s.add_dependency 'inherited_resources', ['>= 1.2.2']
  s.add_dependency 'shoulda'
end
