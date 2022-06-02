class AdminMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.record_created.subject
  #
  def record_created
    
    mail(to: "aliasger@webkorps.com",
            subject: 'Thanks for signing up for our amazing app')
  end  
end
