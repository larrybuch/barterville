class TradesController < ApplicationController
	def index
		@seller_item = Item.where('user_id != ?', @authenticated_user.id)
		@buyer_item = Item.where('user_id = ?', @authenticated_user.id )
		@trade = Trade.new
	end

	def new
	end

	def edit
	end

	def create
		@trade = Trade.new(params[:item])
		if @trade.save
			redirect_to users_path
		else
			render 
		end
	end

	def show
	end

	def update
	end

	def destroy
	end
end
