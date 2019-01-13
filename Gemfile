source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'graphql'
gem 'graphiql-rails', group: :development
gem 'tzinfo-data'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec'
  gem 'rspec-rails'
  gem 'faker', '~> 1.8', '>= 1.8.4'
end

group :development do
  gem 'listen', '~> 3.0.5'
end