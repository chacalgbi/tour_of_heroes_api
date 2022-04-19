# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'active_model_serializers', '~> 0.10.13'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.4', '>= 6.1.4.4'
gem 'rubocop-rails', require: false
gem 'sqlite3', '~> 1.4'
# gem 'rack-cors'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 5.1'
end

group :development do
  gem 'faker', '~> 2.20'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'shoulda-matchers', '~> 5.1'
  gem 'simplecov', '~> 0.21.2', require: false
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
