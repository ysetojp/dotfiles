add_source('https://rails-assets.org')

gem 'rails-assets-bootstrap'
gem 'slim-rails'

gem_group :development, :test do
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'

  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-rails'

  gem 'hirb'
  gem 'hirb-unicode'

#  gem 'capybara'
end

application <<-GENERATORS
config.generators do |g|
  g.template_engine :slim
  g.test_framework :rspec
  g.fixture_replacement :factory_girl
  g.assets false
  g.view_specs false
end
GENERATORS

run 'bundle install'

remove_file './app/views/layouts/application.html.erb'
get 'https://gist.githubusercontent.com/ysetojp/5940a31e177b73673e83/raw/8594a2c150648403dc67bba0abc66f00932c6327/application.html.slim', './app/views/layouts/application.html.slim'

generate 'rspec:install'

git :init
git :add => '.'
git :commit => '-am "Initial commit"'

