class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def edit
	end

	def create
		@user = User.create(params[:name])
	end

	def show
	end

	def update
	end

	def destroy
	end
end
