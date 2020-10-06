# config valid for current version and patch releases of Capistrano
lock "~> 3.14.1"

# set :application, "new_svit_kvartyr_cap"
set :application, "rails_blog"
set :repo_url, "git@github.com:pkorenev/rails_blog.git"

set :branch, "master"

set :deploy_to, "/var/www/#{fetch :application}/"

set :stages, ["development", "test", "production"]
set :stage, :production
set :default_stage, "#{fetch(:stage)}"
set :rails_env, "#{fetch(:stage)}"

set :rvm_type, :system
set :rvm_ruby_version, '2.7.1'

set :file_permissions_roles, :all
set :file_permissions_paths, ['.']
set :file_permissions_users, []
set :file_permissions_groups, []
set :file_permissions_chmod_mode, "0777"

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('public/robots.txt')

append :linked_files, 'config/credentials/production.key'
append :linked_dirs, '.bundle'

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, [])
#                       .push('.bundle', 'tmp/cache', 'public/system',
#                             'public/uploads')

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh
set :format, :pretty

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure