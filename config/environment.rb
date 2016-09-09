# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address        => ENV['MANDRILL_ADDRESS'],
  :port           => ENV['MANDRILL_PORT'],
  :authentication => :plain,
  :user_name      => ENV['MANDRILL_USERNAME'],
  :password       => ENV['MANDRILL_PASSWORD'],
  :domain         => ENV['MANDRILL_DOMAIN'],
  :enable_starttls_auto => true
}
