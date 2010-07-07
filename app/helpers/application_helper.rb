module ApplicationHelper
  
  def title
    "FiveMinuteRuby"
  end
  
  def feed_url
    if Rails.env.production?
      'http://feeds.feedburner.com/fiveminuteruby_screencasts'
    else
      screencasts_url(:format => :rss)
    end
  end
  
end
