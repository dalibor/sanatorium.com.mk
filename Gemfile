source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# Asset template engines
gem 'sass-rails', "~> 3.1.0.rc"
gem 'coffee-script'
gem 'uglifier'

gem 'jquery-rails'
gem 'haml'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem 'rspec-rails', :group => [:test, :development]

group :development do
  gem 'mongrel', '1.2.0.pre2'
  gem 'haml-rails'
end

group :test do
  gem 'turn', :require => false # TODO: test it! pretties test output
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'shoulda'
  gem 'cucumber-rails'
  gem 'database_cleaner'

  gem 'spork', '~> 0.9.0.rc'
  gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git' # patch for rake in rails 3, used by guard-annotate

  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-annotate'
  gem 'guard-spork'
  gem 'guard-cucumber'
  gem 'libnotify'
  gem 'rb-inotify'
end

group :production do
  # Could not find a JavaScript runtime.
  # http://stackoverflow.com/questions/6075961/problem-deploying-rails-3-1-project-to-heroku-could-not-find-a-javascript-runtim
  gem 'therubyracer-heroku', '0.8.1.pre3' # minimizes assets
end

