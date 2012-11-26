class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def edit
	end

	def create
		@user = User.new(params[:name])

	end

	def show
		user = params[:id]
		@user = User.find(id)
	end

	def update
	end

	def destroy
	end
end
