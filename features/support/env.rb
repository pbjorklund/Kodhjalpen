# IMPORTANT: This file is generated by cucumber-rails - edit at your own peril.
# It is recommended to regenerate this file in the future when you upgrade to a 
# newer version of cucumber-rails. Consider adding your own code to a new file 
# instead of editing this one. Cucumber will automatically load all features/**/*.rb
# files.

require 'rubygems'
require 'spork'
 
Spork.prefork do
  require 'cucumber/rails'
  require "factory_girl/step_definitions"

  Capybara.default_selector = :css

end
 
Spork.each_run do
  FactoryGirl.factories.clear
  FactoryGirl.find_definitions  

  ActionController::Base.allow_rescue = false
  
  begin
    DatabaseCleaner.strategy = :transaction
  rescue NameError
    raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
  end
  
  Cucumber::Rails::Database.javascript_strategy = :truncation

end
