source "https://rubygems.org"

ruby "3.3.1"

gem "jwt"
gem "rack-cors"
gem "pg", "~> 1.2" # PostgreSQL adapter
gem "rails_12factor" # Helps with logs and assets in production

gem "rails", "~> 7.1.5"
gem "sprockets-rails"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri windows ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
