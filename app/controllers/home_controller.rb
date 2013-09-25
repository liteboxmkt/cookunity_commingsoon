class HomeController < ApplicationController
  def index
    render layout: "coming_soon"
  end

  def send_mail
    UserNotification.subscription(params[:email]).deliver
    render json: { message: "Subscription successful." }
  end
end
