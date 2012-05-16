source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'pg'
gem 'thin'
gem 'twitter-bootstrap-rails'
gem 'heroku'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'


group :test do
  gem 'cucumber-rails', require: false
end

group :development, :test do
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'cucumber-rails', require: false
  gem "factory_girl_rails"
  gem 'capybara'
  gem "capybara-webkit"
  gem 'fakeweb'
  gem "launchy"
  gem 'database_cleaner', :group => :test
  
  if RUBY_PLATFORM.downcase.include?("darwin")
    gem "guard"
    gem "guard-rspec"
    gem "guard-cucumber"
    gem "guard-bundler"
    gem "guard-spork"
    gem 'spork'
    gem 'rb-fsevent'
    gem 'growl' # also install growlnotify from the Extras/growlnotify/growlnotify.pkg in Growl disk image
    gem 'pry'
    gem 'pry-nav'
  end
end
