# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

set :user, 'deploy'
set :deploy_via, :remote_cache
set :use_sudo, false
set :branch, 'master'

server 'vishal.zambre.in', user: 'deploy', roles: %w(web app db)

set :deploy_to, '/var/www/www.zambre.in'

role :app, %w(deploy@vishal.zambre.in)
role :web, %w(deploy@vishal.zambre.in)
role :db,  %w(deploy@vishal.zambre.in)


set :ssh_options, {
  keys: %w(~/.ssh/id_rsa),
  forward_agent: true,
  auth_methods: %w(publickey),
}

set :rails_env, :production
set :conditionally_migrate, true
