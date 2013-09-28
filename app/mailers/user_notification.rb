class UserNotification < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.subscription.subject
  #
  def subscription(user_email)
    @greeting = "Hi"
    @user_email = user_email
    mail to: "cookunity.us@gmail.com"
  end
end
