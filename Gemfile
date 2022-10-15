# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 7.0', '>= 7.0.4'

gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'devise', '~> 4.8'
gem 'friendly_id', '~> 5.4', '>= 5.4.2'
gem 'jsbundling-rails'
gem 'omniauth-google-oauth2', '~> 1.1', '>= 1.1.1'
gem 'omniauth-rails_csrf_protection', '~> 1.0', '>= 1.0.1'
gem 'pagy', '~> 5.10', '>= 5.10.1'
gem 'pg', '~> 1.4', '>= 1.4.4'
gem 'propshaft'
gem 'puma', '~> 6.0'
gem 'ransack', '~> 3.2', '>= 3.2.1'
gem 'redis', '~> 5.0', '>= 5.0.5'
gem 'simple_form', '~> 5.1'
gem 'slim-rails', '~> 3.5'
gem 'stimulus-rails'
gem 'turbo-rails', '~> 1.3', '>= 1.3.1'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'view_component', '~> 2.74', '>= 2.74.1'

# gem "kredis"
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.23'
  gem 'letter_opener', '~> 1.8', '>= 1.8.1'
end

group :test do
  gem 'brakeman', '~> 5.3', '>= 5.3.1', require: false
  gem 'bundler-audit', '~> 0.9.1', require: false
  gem 'database_cleaner-active_record', '~> 2.0', '>= 2.0.1', require: false
  gem 'rspec-rails', '~> 6.0', require: false
  gem 'rubocop', '~> 1.36', require: false
  gem 'rubocop-performance', '~> 1.15', require: false
  gem 'rubocop-rails', '~> 2.16', '>= 2.16.1', require: false
  gem 'rubocop-rspec', '~> 2.13', '>= 2.13.2', require: false
  gem 'simplecov', '~> 0.21.2', require: false
  gem 'slim_lint', '~> 0.22.1', require: false
end
