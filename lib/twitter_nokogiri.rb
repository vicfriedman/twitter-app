require 'open-uri'

 class TwitterNokogiri
  attr_reader :first_tweet_text, :second_tweet_text, :third_tweet_text

  def initialize
    @doc = Nokogiri::HTML(open("https://twitter.com/jmburges"))
    @first_tweet_text  = @doc.css("p.js-tweet-text").first.text
    @first_tweet_time = self.get_tweets_time
    @second_tweet_text = @doc.css("p.js-tweet-text")[1].text
    @third_tweet_text =  @doc.css("p.js-tweet-text")[2].text
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

