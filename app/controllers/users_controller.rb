class UsersController < ApplicationController

	before_action :find_user, only: [ :show, :edit, :update, :destroy]
	before_action :find_logged_in_user


	def index
		@users = User.paginate(page: params[:page], per_page: 25)
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
		@hobbies = @user.hobbies.all
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
			format.js {redirect_to root_url} #if blank, tihs will look for app/views/users/destroy.js.erb
		end
	end

	def original
		@users = User.original

	end

	private
		def find_user
			@user = User.find(params[:id])
		end

		def user_params
			params.require(:user).permit(:name, :github_acct, :password, :password_confirmation)
		end

end
