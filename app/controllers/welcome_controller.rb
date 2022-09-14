class WelcomeController < ApplicationController
  def send_mail
    if params[:email].present? && current_user.present?
      InviteMailer.send_invite(params,current_user).deliver_now
    end
  end
end
