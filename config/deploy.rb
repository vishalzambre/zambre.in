# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'zambre.in'

set :scm, :git
set :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call
set :repo_url, 'git@github.com:vishalzambre/zambre.in.git'
set :use_sudo, false
set :bundle_binstubs, nil

set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle')

# Default value for keep_releases is 5
set :keep_releases, 1

set :normalize_asset_timestamps, %w{public/javascripts public/stylesheets}

after 'deploy:publishing', 'deploy:restart'

namespace :deploy do
  task :restart do
    invoke 'unicorn:stop'
    invoke 'unicorn:reload'
  end

  task :stop do
    invoke 'unicorn:stop'
  end
end
