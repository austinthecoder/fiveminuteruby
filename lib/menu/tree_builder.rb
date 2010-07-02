module Menu
  class TreeBuilder
    def self.build(&block)
      BasicTree.new(Item.new).tap do |t|
        block.call(new(t))
      end
    end
    
    def initialize(menu_tree)
      @menu_tree = menu_tree
    end
    
    attr_reader :menu_tree
    
    def title(str, type = nil)
      menu_tree.object.titles << Title.new(str, type)
    end
    
    def url(str, method = nil)
      menu_tree.object.urls << Url.new(str, method)
    end
    
    def menu(&block)
      block.call(self.class.new(menu_tree.add(Item.new)))
    end
  end
end