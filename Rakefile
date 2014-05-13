require'./lib/twitter_nokogiri'
require 'open-uri'
require 'nokogiri'
require 'mailgun'
require './lib/sending_emails'

task :check_tweet_time do 
  @twitter_nokogiri = TwitterNokogiri.new("https://twitter.com/jmburges")
  tweeted_time = @twitter_nokogiri.get_tweets_time
  normal_tweeted_time = Time.at(tweeted_time.to_i)
  if normal_tweeted_time > Time.now - 10*60
    @sending_emails = SendingEmail.new
    @sending_emails.send_tweet_email
  else  
    puts "No new tweets"
  end
end