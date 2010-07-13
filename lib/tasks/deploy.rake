require "#{Rails.root}/lib/fiveminuteruby/deployer"

namespace :deploy do
  task :staging do
    Fiveminuteruby::Deployer.deploy_without_tests_checking('staging')
  end
  
  task :production do
    Fiveminuteruby::Deployer.deploy('production')
  end
end