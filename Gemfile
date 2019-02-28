source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

open_version = 'master'
gem 'open', github: '99cm/open', branch: open_version
gem 'open_auth_devise', github: '99cm/open_auth_devise', branch: open_version
gem 'rails-controller-testing'

gemspec