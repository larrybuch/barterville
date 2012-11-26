class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def edit
	end

	def create		
		@user = User.new(params[:user])
		@user.name = @user.name.downcase

		@user.save

		name = params[:user][:name]
		session[:name] = name
		session[:id] = @user[:id]

		if @user.save
			redirect_to edit_user_path(@user)

		else
			render :new
		end

	end

	def show
	end

	def update
	end

	def destroy
	end
end
