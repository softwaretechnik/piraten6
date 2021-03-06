require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']

source 'https://rubygems.org'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'haml-rails'
gem 'capistrano'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem 'capybara', :group => [:development, :test]
group :test do
  gem 'cucumber-rails', :require => false
  gem 'capybara'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'simplecov', :require => false
  gem 'spork', '~> 1.0rc'
end

gem 'github', '>= 0.7.0', :require => nil, :group => [:development]
guard_notifications = true
group :development do
  gem 'rb-fsevent'
  gem 'ruby_gntp' if guard_notifications
end

group :development do
  gem 'guard-livereload'
  gem 'yajl-ruby'
  gem 'rack-livereload'
  gem 'guard-bundler'
  gem 'guard-cucumber'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'thin'
  gem 'quiet_assets'
  gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
end

group :production do
  gem 'unicorn'
end

gem 'rspec-rails', :group => [:development, :test]

group :assets do
  gem 'twitter-bootstrap-rails'
  #gem 'therubyracer'
end

gem 'simple_form'
gem 'sqlite3', :group => [:development, :test]

# Deploy with Capistrano
group :development do
  gem 'capistrano'
  gem 'capistrano-unicorn'
  gem 'capistrano-file_db'
  gem 'rvm-capistrano', '>=1.1.0'
end

gem 'whenever', :require => false

