source "https://rubygems.org"

# Declare your gem's dependencies in geotree.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec


# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'
gem 'geocoder'
gem 'ancestry'

group :development, :test do
  gem 'thin'
  gem 'pry-rails'
  gem 'database_cleaner', '=1.0.1'
end


group :test do
  gem 'rspec-rails'
end