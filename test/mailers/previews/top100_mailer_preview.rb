# Preview all emails at http://localhost:3000/rails/mailers/top100_mailer
class Top100MailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/top100_mailer/welcome
  def welcome
    Top100Mailer.welcome
  end

end
