require 'open-uri'

 class TwitterNokogiri

  def initialize
    @doc = Nokogiri::HTML(open("https://twitter.com/jmburges"))
    @tweet_text  = @doc.css("p.js-tweet-text").first.text
    @tweet_time = self.get_tweets_time
  end

  def get_tweets_text # Search for nodes by css
    tweet_text = @doc.css("p.js-tweet-text").first.text
    tweet_text
  end

  def get_tweets_time
   tweeted_time = @doc.css(".js-short-timestamp").first.attributes["data-time"].value
   tweeted_time
  end

  def doc
    @doc
  end

  def doc=(doc)
    @doc = doc
  end

  def tweet_text
    @tweet_text
  end

  def tweet_text=(tweet_text)
    @tweet_text = tweet_text
  end

  def tweet_time
    @tweet_time
  end

  def tweet_time=(tweet_time)
    @tweet_time = tweet_time
  end

end

tweet = TwitterNokogiri.new

tweet.tweet_time #=> "oiqwjoifawhg"
tweet.tweet_text #=> ""

