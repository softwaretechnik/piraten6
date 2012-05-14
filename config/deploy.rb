set :application, 'piraten6'
set :user,        'webapp1'

set :scm, :git
set :repository, 'git://github.com/rmoriz/piraten6.git'
set :branch, 'master'
set :deploy_via, :remote_cache
set :deploy_to, "/home/webapp1/apps/#{application}"

set :rails_env, :production
set :use_sudo,  false

# RVM
set :rvm_ruby_string, "ruby-1.9.3-p125@piraten6"
before 'deploy', 'rvm:install_rvm'
before 'deploy', 'rvm:install_ruby'

# BUNDLER
#set :bundle_flags,    "--quiet"
set :bundle_without,  [:development, :test]

role :web, "78.47.137.8"
role :app, "78.47.137.8"
role :db,  "78.47.137.8", :primary => true # This is where Rails migrations will run


# UNICORN
set :unicorn_pid, "#{shared_path}/pids/unicorn.pid"

require "rvm/capistrano"
require "bundler/capistrano"
require "capistrano-unicorn"
require "capistrano-file_db"


# Rails 3.1 assets, no public/{images, stylesheets, javascripts} directories
set :normalize_asset_timestamps, false
load 'deploy/assets'
