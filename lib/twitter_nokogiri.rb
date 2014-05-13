require 'open-uri'

 class TwitterNokogiri

  def initialize(doc)
    @doc = Nokogiri::HTML(open("#{doc}"))
  end

  def get_tweets_text # Search for nodes by css
    tweets = @doc.css("p.js-tweet-text").first.text
    tweets 
  end

  def get_tweets_time
   tweeted_time = @doc.css("small.time").first.children.children.first.attributes["data-time"].value
   tweeted_time
  end

end