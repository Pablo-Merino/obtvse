source 'https://rubygems.org'

gem 'rails', '~> 3'

# Extention libraries
gem 'thin', '~> 1'

# Rendering engines and vendor libraries
gem 'jquery-rails', '~> 2'
gem 'redcarpet'

# Misc libraries
# gem 'bcrypt-ruby', '~> 3', require: 'bcrypt'
gem 'stringex', '~> 1', git: 'git://github.com/rsl/stringex.git'
gem 'kaminari', '~> 0.13'
gem 'mongoid', "~> 3.0.0.rc"
gem "bson_ext"
gem 'mongoid_slug', :git => "git://github.com/Pablo-Merino/mongoid-slug.git"
gem 'haml'
gem 'haml-rails'
gem 'devise'
group :development do
  # gem 'heroku', '~> 2'
  # gem 'capistrano', '~> 2.9'
  # gem 'guard', '~> 1'
  # gem 'guard-rspec', '~> 0.6'
  # gem 'guard-spork', '~> 0.5'
  gem 'rails_best_practices', '~> 1'
end

group :test do
  gem 'capybara', '~> 1'
  gem 'spork', '~> 0.9'
  gem 'database_cleaner', '~> 0.7'
end

group :development, :test do
  gem 'foreman', '~> 0.40'
  gem 'faker', '~> 1'
  gem 'factory_girl_rails', '~> 1'
end

group :assets do
  gem 'sass-rails', '~> 3'
  gem 'coffee-rails', '~> 3'
  gem 'uglifier', '~> 1'
end
