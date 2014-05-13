# Mail.defaults do
#   delivery_method :smtp, {
#     :address => 'smtp.sendgrid.net',
#     :port => 587,
#     :domain => 'heroku.com',
#     :user_name => ENV['SENDGRID_USERNAME'],
#     :password => ENV['SENDGRID_PASSWORD'],
#     :authentication => 'plain',
#     :enable_starttls_auto => true
#   }
# end
require 'mailgun'
class SendingEmail

  Mailgun.configure do |config|
    config.api_key = 'key-6uiavyyd3nmb9adpaii04drw93y8ymq8'
    config.domain  = 'sandbox9e40982438de4c218c126056aa8f25ea.mailgun.org'
  end

  def send_tweet_email
    @twitter_nokogiri = TwitterNokogiri.new("https://twitter.com/jmburges")
    @tweets = @twitter_nokogiri.get_tweets_text
    parameters = {
    :to => "victoria.m.friedman@gmail.com",
    :subject => "JOE TWEETED",
    :text => "HERE'S JOE'S TWEET: #{@tweets}",
    :from => "victoria.m.friedman@gmail.com"
    }
    @mailgun = Mailgun()
    @mailgun.messages.send_email(parameters)
  end

end