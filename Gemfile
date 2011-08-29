source 'http://rubygems.org'

gem 'rails', '3.1.0.rc8'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "~> 3.1.0.rc"
  gem 'coffee-rails', "~> 3.1.0.rc"
  gem 'uglifier'
  gem 'compass', :git => 'git://github.com/chriseppstein/compass.git', :branch => 'rails31'
end

gem 'jquery-rails'
gem 'modernizr-rails'
gem 'haml'
gem 'inherited_resources' # blog engine dependency
gem 'carrierwave'
gem 'rmagick'
gem 'will_paginate', '~> 3.0.0'
gem 'acts_as_list'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do
  gem 'rspec-rails'
  gem 'web-app-theme', '>= 0.6.2'
end

group :development do
  gem 'mongrel', '1.2.0.pre2'
  gem 'haml-rails'
  gem 'hpricot'
  gem 'ruby_parser'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'shoulda-matchers'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'pickle'
  gem 'launchy'

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
