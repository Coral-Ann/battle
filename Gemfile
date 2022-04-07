# frozen_string_literal: true

source "https://rubygems.org"

ruby '3.0.0'

group :test do
  gem 'rspec'
  gem 'simplecov', require: false, group: :test
  gem 'simplecov-console', require: false, group: :test
  gem 'capybara'
  gem 'webdrivers', '~> 5.0', require: false
end

group :development, :test do
  gem 'rubocop', '1.20'
  gem 'sinatra'
  gem 'sinatra-contrib'
  gem 'puma'
  gem 'reel'
  # gem 'webrick'
  gem 'launchy'
end
