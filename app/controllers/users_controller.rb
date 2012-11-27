class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
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
		raise params.inspect
		user_id = params[:id]
		@user = User.find(user_id)
	end

	def update
		@user = User.find(params[:id])
	    if @user.update_attributes(params[:user])
	      redirect_to @user
	    else
	      render :edit
	    end
	end

	def destroy
	end
end
