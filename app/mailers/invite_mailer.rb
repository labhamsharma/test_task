class InviteMailer < ApplicationMailer
	default from: 'from@example.com'
	def send_invite(params, current_user)
		@invite_email = params[:email]
		@user = current_user
		@url  = 'http://localhost:3000/auth/sign_in'
		mail(to: @invite_email, subject: 'please sign-up for registration', :from => @user)
	end
end
