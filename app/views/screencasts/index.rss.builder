xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "FiveMinuteRuby Screencasts"
    xml.description "New FiveMinuteRuby screencasts"
    xml.link root_url

    screencasts.each do |s|
      xml.item do
        xml.title s.title
        xml.description s.description
        xml.pubDate s.created_at.to_s(:rfc822)
        xml.link screencast_url(s)
        xml.guid screencast_url(s)
      end
    end
  end
end