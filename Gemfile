# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.7', '>= 6.1.7.3'
gem 'sassc-rails'
gem 'sqlite3', '~> 1.4'

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end

group :development do
  gem 'better_errors'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'validates_timeliness'

gem 'faker'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
