source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'puma', '~> 4.1'
gem 'faker', '2.1.2'
gem 'active_storage_validations'
gem 'sass-rails', '>= 6'
gem 'webpacker'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootstrap-sass', '3.4.1'
gem 'bootstrap'
gem 'bcrypt', '3.1.13'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'will_paginate'
gem 'bootstrap-will_paginate'
gem 'annotate'
gem 'image_processing'
gem 'mini_magick'

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'rails-controller-testing','1.0.4'
  gem 'minitest','5.11.3'
  gem 'minitest-reporters','1.3.8'
  gem 'guard','2.15.0'
  gem 'guard-minitest','2.4.6'
end

group:production do
  gem'pg','1.1.4'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
