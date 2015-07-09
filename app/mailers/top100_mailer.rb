class Top100Mailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.top100_mailer.welcome.subject
  #
  default :from => "bikon@gmail.com"

  def welcome(user, generated_password)
    @greeting = 
    '謝謝您報名TOP100,同時你已可登入maker.com 請依據下方帳密登入後並修改您的密碼！'
    @user = user
    @generated_password = generated_password
    mail(:to => @user.email, :subject => "Top100 - 報名成功")
  end
end
