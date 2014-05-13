require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/twitter_nokogiri'
require 'pry'

get "/" do
  @twitter_nokogiri = TwitterNokogiri.new("https://twitter.com/jmburges")
  @tweets = @twitter_nokogiri.get_tweets_text
  @tweeted_time = @twitter_nokogiri.get_tweets_time
  erb :index
end