module Menu
  class Title
    def initialize(title, type = nil)
      @title = title
      @type = type
    end
  
    attr_accessor :title, :type
    
    alias_method :to_s, :title
  end
end