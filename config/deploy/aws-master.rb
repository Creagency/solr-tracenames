# Staging

set :user, 'ec2-user'
set :application, "SolrServer"
set :hostname, "aws-master"
set :rails_env, 'production'
set :deploy_to, "/SOLR/#{application}"
ssh_options[:keys] = ["/Users/xinghao/aws-ec2/tracename-us.pem"]


set :db_type, "master"

role :app, "54.211.17.78"
role :web, "54.211.17.78"
role :db,  "54.211.17.78", :primary => true

set :branch do
  default_tag = `git tag -l #{rails_env}* `.split("\n").last
  tag = Capistrano::CLI.ui.ask "Please enter the tag you would like to deploy to #{rails_env} (make sure the tag has been pushed first): [#{default_tag}] "
  tag = default_tag if tag.empty?
  tag
end
