module HasTags
  
  require 'set'
  
  attr_writer :tags
  
  def tags
    @tags ||= Tags.new
  end

  class Tags < Set
    def add(o)
      super Tag.new(o)
    end
    
    alias_method :<<, :add
  end
  
  class Tag
    def initialize(name)
      unless name =~ /^[a-z]+(_[a-z]+)*$/
        raise ArgumentError, 'Tag must be a string of lowercase letters and/or underscores' 
      end
      @name = name.to_s.dup.freeze
    end

    delegate :to_s, :to => :name
    delegate :*, :to => :to_s

    def +(o)
      name + self.class.new(o)
    end

    private

    attr_reader :name 
  end
  
end