rails_root = ENV['RAILS_ROOT'] || File.dirname(__FILE__) + '/../..'
rails_env = ENV['RAILS_ENV'] || 'development'

github_env = YAML.load_file(rails_root + '/config/github.yml')[rails_env]

# github login
Rails.application.config.middleware.use OmniAuth::Strategies::GitHub, 
  github_env['api_key'], github_env['secret'] 
