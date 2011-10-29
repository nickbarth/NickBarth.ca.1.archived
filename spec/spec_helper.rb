require 'rubygems'
require 'spork'
require 'paperclip/matchers'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  Dir["./spec/support/**/*.rb"].each {|f| require f}

  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'capybara/rspec'  

  RSpec.configure do |config|
    config.mock_with :rspec
    config.use_transactional_fixtures = true
    config.include Paperclip::Shoulda::Matchers
    config.include Factory::Syntax::Methods
    ActiveSupport::Dependencies.clear
  end
end

Spork.each_run do
  FactoryGirl.reload  
end

