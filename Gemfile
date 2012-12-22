source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'
gem 'execjs'

#gem 'libv8', '3.11.8.3'

gem 'therubyracer','0.10.2', :platform => :ruby
gem 'nokogiri'

gem 'heroku'

gem 'pry'
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'
gem 'omniauth-linkedin'
gem 'omniauth-vkontakte'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'
  
  gem 'compass-rails'
  gem 'zurb-foundation'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# Slim 
gem 'slim-rails'
gem 'slim', '~> 1.2.2'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem 'taps'

# only for deploy on heroku
group :production do
    gem 'pg'
end

group :development do
    gem 'taps' #, :require => false # has an sqlite dependency, which heroku hates
    gem 'sqlite3'
end

