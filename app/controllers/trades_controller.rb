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

		@trade = Trade.new(:seller_id => params[:seller_id], :buyer_id => params[:buyer_id], :buyer_item_id => params[:buyer_item_id], :seller_item_id => params[:seller_item_id])
		
		if @trade.save
			TradeMessage.pendingtrade(@authenticated_user.name).deliver
			
			redirect_to trade_path(@trade)
		else
			render trades_path
		end

	end

	def show
		trade = Trade.find( params[:id] )
		@buyer_id = trade.buyer_id
		@seller_id = trade.seller_id

		#@trade = Trade.all 
		if @buyer_id == @authenticated_user.id
			@your_trades = Trade.where( :buyer_id => @authenticated_user.id )
		end

		if @seller_id != @authenticated_user.id
			@proposed_trades = Trade.where( :seller_id => @authenticated_user.id )
		end

	end

	def update
	end

	def destroy
	end
end
