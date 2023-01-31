# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.2.0"

gem "bootsnap", require: false
gem "carrierwave"
gem "coffee-rails"
gem "jbuilder"
gem "mini_magick"
gem "msgpack", "~> 1.5"
gem "puma"
gem "rails"
gem "rubocop"
gem "sassc", "~> 2.1.0"
gem "sass-rails"
gem "turbolinks"
gem "tzinfo-data"
gem "uglifier"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "listen"
  gem "pry"
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "rubocop-shopify", "~> 2.12", require: false
  gem "ruby-lsp", require: false
  gem "spring"
  gem "sqlite3"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "webdrivers"
end

group :production do
  gem "pg", platforms: :ruby
end
