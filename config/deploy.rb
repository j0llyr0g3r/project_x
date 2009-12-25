set :stages, %w(production)
set :default_stage, "production"
require 'capistrano/ext/multistage'

#############################################################
#    Application
#############################################################

set :application, "projectx"
set :deploy_to, "/var/www/#{application}"

#############################################################
#    Settings
#############################################################

set :use_sudo, false
set :port, 2222

#############################################################
#    Servers
#############################################################

set :user, 'yourtunes'
set :password, 'y0urtun3s'
role :app, "85.214.82.205"
role :web, "85.214.82.205"
role :db,  "85.214.82.205", :primary => true


#############################################################
#    SCM
#############################################################

set :scm, :git
set :repository, 'git@github.com:j0llyr0g3r/project_x.git'
# TODO should be :remote_cache
set :deploy_via, :copy
#set :deploy_via, :remote_cache
set :branch, "master"

#############################################################
#    Tasks
#############################################################

# for standard cap-tasks see: http://wiki.github.com/jamis/capistrano/standard-capistrano-tasks
namespace :deploy do
  task :restart do
    run "touch #{current_path}/tmp/restart.txt" 
  end
  task :symlink_shared do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
end

after 'deploy:symlink', 'deploy:symlink_shared'
