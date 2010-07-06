module Fiveminuteruby
  module EnsureWww
    
    def self.included(base)
      base.send(:include, InstanceMethods)
      base.before_filter :ensure_www, :if => :ensure_www?
    end
    
    module InstanceMethods
      private
      
      def ensure_www?
        %w(development production).include?(Rails.env)
      end
      
      def ensure_www
        return unless request.subdomain(CONFIG[:tld_size]).blank?
        url = [request.protocol, "www.", request.host_with_port, request.fullpath].join
        redirect_to(url, :status => :moved_permanently)
      end
    end
    
  end
end