class HtmlMetaTag
  def initialize(attrs = {})
    @attrs = attrs
  end
  
  def to_s
    "<meta #{@attrs.map { |k, v| %{#{k}="#{v}"} }.join(' ')}>"
  end
end