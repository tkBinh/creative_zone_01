source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.5.1"

gem "bcrypt", "3.1.12"
gem "bootsnap", ">= 1.1.0", require: false
gem "bootstrap-sass", "3.3.7"
gem "bootstrap-will_paginate", "~> 1.0"
gem "carrierwave", "~> 1.2", ">= 1.2.2"
gem "coffee-rails", "~> 4.2"
gem "config"
gem "faker", "~> 1.8", ">= 1.8.7"
gem "figaro", "~> 1.1", ">= 1.1.1"
gem "i18n-js", "~> 3.0", ">= 3.0.7"
gem "jbuilder", "~> 2.5"
gem "jquery-rails", "~> 4.3", ">= 4.3.3"
gem "mini_magick", "~> 4.8"
gem "mysql2", "~> 0.5.1"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.0"
gem "rubocop", "~> 0.54.0", require: false
gem "sass-rails", "~> 5.0"
gem "sqlite3"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem "will_paginate", "~> 3.1", ">= 3.1.6"

group :production do
  gem "fog", "~> 2.0"
end

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15", "< 4.0"
  gem "chromedriver-helper"
  gem "selenium-webdriver"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
