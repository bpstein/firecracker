source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg', group: :production
gem 'rails_12factor', group: :production
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'bootstrap-sass', '~> 3.3.5'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'figaro'
gem 'paperclip'
gem 'toastr-rails'
gem 'activeadmin', :git => 'https://github.com/activeadmin/activeadmin'
gem 'responders', :git => 'https://github.com/plataformatec/responders'
gem 'inherited_resources', :git => 'https://github.com/josevalim/inherited_resources'
gem 'active_skin'
gem 'ransack', :git => 'https://github.com/ernie/ransack'
gem 'redcarpet', '~> 3.2.3'
gem 'coderay', '~> 1.1.0'
gem 'active_admin-sortable_tree', '~> 0.2.1'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-linkedin-oauth2'
gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'
gem 'rubyzip',  '~> 0.9.9'
gem 'jquery-slick-rails'
gem 'aws-sdk'
gem 's3_direct_upload'
gem 'annotate'
gem 'bourbon'

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.5'
  gem 'rails-controller-testing'
  gem 'byebug', platform: :mri
  gem 'factory_bot_rails'
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
