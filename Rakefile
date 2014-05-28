require 'nokogiri'
require 'open-uri'
require 'mailgun'
require './lib/scraping.rb'
require './lib/messaging.rb'


task :check_tweet_time do
  @twitter_nokogiri = TwitterNokogiri.new("https://twitter.com/vicfriedman")
  normal_tweeted_time = Time.at(@twitter_nokogiri.tweet_time.to_i)
  if normal_tweeted_time > Time.now - 10*60
    @sending_emails = SendingTweets.new
    @sending_emails.email_tweets
  else  
    puts "No new tweets"
  end
end
