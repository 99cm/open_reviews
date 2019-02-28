require 'open_reviews/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'open_reviews'
  s.version     = OpenReviews.version
  s.summary     = 'Basic review and ratings facility for Open'
  s.description = s.summary
  s.required_ruby_version = '>= 2.5.3'

  s.authors 	 = ['Leo Wang']
  s.homepage     = 'https://github.com/99cm/open_reviews'
  s.license      = 'BSD-3'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = 'master'
  s.add_runtime_dependency 'open_core', open_version
  s.add_runtime_dependency 'open_auth_devise', open_version

  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'sqlite3', '~> 1.3.6'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'rubocop'
end