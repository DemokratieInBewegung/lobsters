class EmailMessage < ActionMailer::Base
  default :from => "#{Rails.application.name} " <<
    "<#{ENV['MAILER_ADDRESS']}>"

  def notify(message, user)
    @message = message
    @user = user

    mail(
      :to => user.email,
      :subject => "[#{Rails.application.name}] Private Message from " <<
        "#{message.author_username}: #{message.subject}"
    )
  end
end
