server 'ubuntu@3.19.196.192', user: 'ubuntu', roles: %w{web app db}, my_property: :my_value

server '3.19.196.192',
       user: 'ubuntu',
       roles: %w{web app db},
       ssh_options: {
         user: fetch(:user), # overrides user setting above
         keys: %w(~/.ssh/id_rsa),
         forward_agent: true,
         auth_methods: %w(publickey password)#,
         # password: 'ABC123ssi'
       }
# setting per server overrides global ssh_options
namespace :paths do
  desc "Link paths of required files"
  task :link_paths do
    #run "ln -sf #{shared_path}/database.yml #{release_path}/config/database.yml"
    run "ln -sf #{shared_path}/uploads #{release_path}/public/uploads"
    run "ln -sf  #{shared_path}/config/config.yml #{current_path}/config/config.yml"
  end
end
set :rails_env, "development"
set :puma_env, "development"
set :puma_config_file, "#{shared_path}/config/puma.rb"
set :puma_conf, "#{shared_path}/config/puma.rb"

ask :branch, 'master'
# set :npm_flags, '--staging' # default