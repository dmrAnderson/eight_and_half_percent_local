# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 7.0', '>= 7.0.4'

gem 'aws-sdk-s3', '~> 1.117', '>= 1.117.1', require: false
gem 'bootsnap', '~> 1.15', require: false
gem 'cssbundling-rails', '~> 1.1', '>= 1.1.2'
gem 'devise', '~> 4.8'
gem 'friendly_id', '~> 5.5'
gem 'image_processing', '~> 1.12', '>= 1.12.2'
gem 'invisible_captcha', '~> 2.0'
gem 'jsbundling-rails', '~> 1.1', '>= 1.1.1'
gem 'omniauth-google-oauth2', '~> 1.1', '>= 1.1.1'
gem 'omniauth-rails_csrf_protection', '~> 1.0', '>= 1.0.1'
gem 'pagy', '~> 5.10', '>= 5.10.1'
gem 'pg', '~> 1.4', '>= 1.4.5'
gem 'propshaft'
gem 'puma', '~> 6.0', '>= 6.0.1'
gem 'ransack', '~> 3.2', '>= 3.2.1'
gem 'redis', '~> 5.0', '>= 5.0.5'
gem 'simple_form', '~> 5.1'
gem 'slim-rails', '~> 3.5'
gem 'stimulus-rails', '~> 1.2', '>= 1.2.1'
gem 'turbo-rails', '~> 1.3', '>= 1.3.2'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'view_component', '~> 2.80'

group :development, :test do
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 3.1'
  gem 'letter_opener', '~> 1.8', '>= 1.8.1'
end

group :test do
  gem 'brakeman', '~> 5.4', require: false
  gem 'bundler-audit', '~> 0.9.1', require: false
  gem 'database_cleaner-active_record', '~> 2.0', '>= 2.0.1', require: false
  gem 'rspec-rails', '~> 6.0', '>= 6.0.1', require: false
  gem 'rubocop', '~> 1.41', '>= 1.41.1', require: false
  gem 'rubocop-performance', '~> 1.15', '>= 1.15.2', require: false
  gem 'rubocop-rails', '~> 2.17', '>= 2.17.4', require: false
  gem 'rubocop-rspec', '~> 2.16', require: false
  gem 'simplecov', '~> 0.22.0', require: false
  gem 'slim_lint', '~> 0.22.1', require: false
end
