module Fiveminuteruby
  class Deployer
    
    class << self
      def deploy(location)
        system "git push #{location} master"
      end
      
      def deploy_with_logging(location)
        puts "Deployment to #{location} started"
        deploy_without_logging(location)
        puts "Deployment complete"
      end
      
      alias_method_chain :deploy, :logging
      
      def deploy_with_tests_checking(location)
        puts "Checking tests first"
        if system('rake spec && cucumber features')
          deploy_without_tests_checking(location)
        end
      end
      
      alias_method_chain :deploy, :tests_checking
    end
    
  end
end