source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'pg'
gem 'rails_12factor'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.5'
  gem 'rails-controller-testing'
  gem 'byebug', platform: :mri
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'capybara'
  gem 'coveralls', require: false
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'warden-rspec-rails'
  gem 'launchy'
  gem 'dotenv-rails'
  gem 'foreman'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
