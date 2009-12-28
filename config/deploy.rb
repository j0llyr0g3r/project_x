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

namespace :sass do
  desc 'Updates the stylesheets generated by Sass'
  task :update do
    run "cd #{current_path} && rake sass:update RAILS_ENV=#{stage}"
  end
end

namespace :deploy do
  task :re_index do
    run "cd #{current_path} &&  rake ts:index RAILS_ENV=#{stage}"
  end
  task :restart do
    run "touch #{current_path}/tmp/restart.txt" 
  end
  task :symlink_shared do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    # why do we do this?
    # The reason is, that thinking sphinx is running from withing our
    # current deployment directory like "searchd --config .....
    # On a new deployment, TS would still be running, but with the
    # old config-file from our previous deployment folder - which would be an
    # error-prone, unclean solution. 
    # So we have two options:
    #   1. stopping TS, re-generating the config-file and restarting TS
    #   2. symlinking the config-file from the shared folder -> better
    run "ln -nfs #{shared_path}/config/production.sphinx.conf #{release_path}/config/production.sphinx.conf"
  end
end

after 'deploy:symlink', 'deploy:symlink_shared'
after 'deploy:symlink_shared', 'sass:update'
after 'sass:update', 'deploy:re_index'
