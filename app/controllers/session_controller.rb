class SessionController < ApplicationController

	def new
	end

	def create
		new_user = User.where(github_acct: params[:github_acct]).first
		if new_user && new_user.authenticate(params[:password])
			session[:user_id] = new_user.id
			redirect_to root_url, notice: "You have logged in. Nice going"
		else
			flash.now[:alert] = "You messed up. Nice going (sarcastically)"
			render :new
		end
	end


end
