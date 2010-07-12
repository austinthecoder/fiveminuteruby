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
  
  def javascripts
    %w(
      http://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js
      application
    )
  end
  
  def stylesheets
    %w(application)
  end
  
  def meta_tags
    [
      {
        'content' => "text/html; charset=utf-8",
        'http-equiv' => "Content-type"
      },
      {
        'name' => "google-site-verification",
        'content' => "a_zoarsMpsPYWRu5z2hwh8iYDqeRuymVsAt1HolPxcw"
      }
    ].map { |attrs| HtmlMetaTag.new(attrs) }.join("\n").html_safe
  end
  
end
