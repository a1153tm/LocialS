set :application, "locials"
set :deploy_to, "/home/mhp/locials"

set :repository,  "git@github.com:a1153tm/LocialS"
set :scm, :git

#set :user, :deployer  

set :use_sudo, false

role :web, "mhp@avenueq.tachibanakikaku.com"
role :app, "mhp@avenueq.tachibanakikaku.com"
#role :db,  "mhp@avenueq.tachibanakikaku.com"
#role :db,  "192.168.200.16", :primary => true # This is where Rails migrations will run
#role :db,  "localhost"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
    run "~/release.sh"
  end
end
