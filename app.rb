require 'bundler' #require bundler
Bundler.require #require everything in bundler in gemfile
require './lib/twitter_nokogiri'

class MyApp < Sinatra::Base
  get "/" do
    @tweets = TwitterNokogiri.new
    erb :index
  end
end