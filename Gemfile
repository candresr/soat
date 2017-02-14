source 'https://rubygems.org'
ruby "2.4.0"
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.2'
gem 'omniauth'
gem 'devise'
gem 'aws-sdk'
gem 'active_model_serializers'
gem 'jquery-rails'
gem 'turbolinks'
gem 'ransack'
gem 'kaminari'
gem 'carrierwave', '~> 1.0'
gem 'simple_form'
gem 'cancancan', '~> 1.10'
gem "rolify"
gem 'rails_12factor', group: :production
gem 'slim-rails'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
  gem 'rubocop', require: false
  gem 'ffaker'
  gem 'factory_girl_rails'
  gem 'mailcatcher'
end

group :test do 
  gem 'rspec-activemodel-mocks'
  gem "database_cleaner"
  gem "shoulda-matchers"
  gem 'json_spec'
  gem "rspec-collection_matchers"
  gem 'capybara'
  gem 'rails-controller-testing'
  gem 'simplecov', require: false
end


group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end