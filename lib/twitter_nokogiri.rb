require 'open-uri'

 class TwitterNokogiri

  def initialize(doc)
    @doc = Nokogiri::HTML(open("#{doc}"))
    @tweet_text  = self.get_tweets_text
  end

  def get_tweets_text # Search for nodes by css
    tweet_text = @doc.css("p.js-tweet-text").first.text
    tweet_text
  end

  def get_tweets_time
   tweeted_time = @doc.css("small.time").first.children.children.first.attributes["data-time"].value
   tweeted_time
  end

end