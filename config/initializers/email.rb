ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address              => "smtp.zoho.eu",
    :port                 => 465,
    :domain               => 'demokratie-in-bewegung.org',
    :user_name            => ENV['SMTP_USERNAME'],
    :password             => ENV['SMTP_PASSWORD'],
	  :ssl                  => true,
	  :tls                  => true,
	  :enable_starttls_auto => true   
}

Rails.application.config.mailer_sender = ENV['MAILER_ADDRESS']