# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails'
gem 'carrierwave'
gem 'mini_magick'
gem 'puma'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'bootsnap', require: false
gem 'rubocop'
gem 'tzinfo-data'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'sqlite3'
  gem 'listen'
  gem 'web-console'
  gem 'pry'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-shopify', require: false
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :production do
  gem 'pg'
end
