module Menu
  class Item
  
    include HasTags
    
    def urls
      @urls ||= []
    end
  
    def titles
      @titles ||= []
    end
    
    def url
      @urls.first.url
    end
    
    def method_missing(method, *args, &block)
      case method.to_s
      when /^((\w+)_)?title$/
        titles.detect { |t| t.type == $2 }
      else
        super
      end
    end
    
  end
end