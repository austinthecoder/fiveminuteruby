module Fiveminuteruby
  module BasicAuth
    
    def self.included(base)
      base.send(:include, InstanceMethods)
      base.before_filter(:authenticate, :if => :authenticate?)
    end
    
    module InstanceMethods
      protected
      
      def authenticate?
        Rails.env.staging?
      end
      
      def authenticate
        authenticate_or_request_with_http_basic do |username, password|
          username == CONFIG['http_auth_username'] && password == CONFIG['http_auth_password']
        end
      end
    end
    
  end
end