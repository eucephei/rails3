ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => "587",
  :domain               => "railscasts.com",
  :user_name            => "railscasts",
  :password             => "secret",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

require 'development_mail_interceptor' #add this line
ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor) if  Rails.env.development?
ActionMailer::Base.default_url_options[:host] = "localhost:3000"
