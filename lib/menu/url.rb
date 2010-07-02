module Menu
  class Url
    def initialize(url, method = nil)
      self.url = url
      self.method = method
    end

    attr_accessor :url
    attr_writer :method

    def method
      @method ||= :get
    end
  end
end