class BanNotification < ActionMailer::Base
  default :from => "#{Rails.application.name} " <<
    "<#{ENV['MAILER_ADDRESS']}>"

  def notify(user, banner, reason)
    @banner = banner
    @reason = reason

    mail(
      :from => "#{@banner.username} <#{ENV['MAILER_ADDRESS']}>",
      :replyto => "#{@banner.username} <#{@banner.email}>",
      :to => user.email,
      :subject => "[#{Rails.application.name}] You have been banned"
    )
  end
end
