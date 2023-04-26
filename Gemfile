source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.3"

gem "rails", "~> 7.0.4"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "jbuilder"
gem "bcrypt"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "bootsnap", require: false
gem "vite_rails"
gem "sprockets-rails"
gem "simple_form"

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "web-console"
  gem "solargraph"
  gem "rubocop-rails"
  gem "rubocop-performance"
  gem "rubocop"
  gem "rubocop-rspec"
  gem "htmlbeautifier"
  gem "better_errors"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end


