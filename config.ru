require './app'
run Sinatra::Application

Mail.defaults do
  delivery_method :smtp, {
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :domain => 'heroku.com',
    :domain => 'http://localhost:9393',
    :user_name => 'postmaster@sandbox9e40982438de4c218c126056aa8f25ea.mailgun.org',
    :authentication => 'plain',
    :enable_starttls_auto => true
  }
end