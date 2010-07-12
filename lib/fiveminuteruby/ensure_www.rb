module Fiveminuteruby
  module EnsureWww
    
    def self.included(base)
      base.send(:include, InstanceMethods)
      base.before_filter :attempt_to_ensure_www
    end
    
    module InstanceMethods
      private
      
      def attempt_to_ensure_www
        return if !Rails.env.production? || request.host == 'www.fiveminuteruby.com'
        url = [request.protocol, "www.", request.host_with_port, request.fullpath].join
        redirect_to(url, :status => :moved_permanently)
      end
    end
    
  end
end