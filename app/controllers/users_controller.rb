class UsersController < ApplicationController

	before_action :find_user, only: [ :show, :edit, :update, :destroy]

	def index
		@users = User.all
		@user = User.new
	end

	def show
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		respond_to do |format|
			format.html {redirect_to root_url}
			format.js {}
		end
	end

	def edit
	end

	def update
	  @user.update(user_params)
	  redirect_to user_url, notice: "Updated"
	end


	def destroy
		@user.destroy
		respond_to do |format|
			format.html {redirect_to root_url, notice: "Goodbye"}
			format.js {} #if blank, tihs will look for app/views/users/destroy.js.erb
		end
	end

	private
		def find_user
			@user = User.find(params[:id])
		end

		def user_params
			params.require(:user).permit(:name, :github_acct)
		end

end
