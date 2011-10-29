source 'http://rubygems.org'

gem 'rails', '3.1.1'
gem 'sqlite3'
gem 'json'

group :assets do
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'sass-rails',   '~> 3.1.4'
gem 'jquery-rails'

gem 'activeadmin'
gem 'haml'
gem 'kaminari'
gem 'redcarpet'
gem 'paperclip'

# Rack 1.3.4 is Broken Currently
gem 'rack', '1.3.3'

group :development, :test do
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'launchy'
  gem 'database_cleaner'
  if RUBY_PLATFORM.downcase.include?("darwin")
    gem 'rb-fsevent'
    gem 'growl'
  end
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'spork', '~> 0.9.0.rc'
end

group :production, :development do
  gem 'friendly_id', '~> 4.0.0.beta14'
end
