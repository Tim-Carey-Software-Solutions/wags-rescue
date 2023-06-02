source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "administrate", github: "excid3/administrate", branch: "jumpstart"
gem "bootsnap", require: false
gem "devise"
gem "interactor-rails", "~> 2.0"
gem "jbuilder"
gem "jsbundling-rails", "~> 1.1", ">= 1.1.1"
gem "pg", "~> 1.1"
gem "pundit", "~> 2.3"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.4", ">= 7.0.4.3"
gem "redis", "~> 4.0"
gem "sprockets-rails"
gem "stimulus-rails"
gem "stripe"
gem "tailwindcss-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "view_component"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "dotenv-rails"
end

group :development do
  gem "dockerfile-rails", ">= 1.3"
  gem "letter_opener"
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "rails-controller-testing"
  gem "selenium-webdriver"
  gem "webdrivers"
end
