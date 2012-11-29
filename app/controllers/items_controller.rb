class ItemsController < ApplicationController
  def index
    @item = Item.where('user_id != ?', @authenticated_user.id)
  end

  def new
    @item = Item.new
  end

  def create

    @item = Item.new(params[:item])
    @item[:user_id] = @authenticated_user.id
    @item.save

    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def edit
    item_id = params[:id]
    @item = Item.find(item_id)
  end
   
  def show
    item_id = params[:id]
    @item = Item.find(item_id)
  end

  def update

  end

  def accept
    trade = Trade.find(params[:trade_id])

    trade.update_attributes(:trade_status => true)

    seller_item = Item.find(trade.seller_item_id)
    buyer_item = Item.find(trade.buyer_item_id)
    seller = User.find(trade.seller_id)
    buyer = User.find(trade.buyer_id)

    seller_item.update_attributes(:user_id => buyer.id)
    buyer_item.update_attributes(:user_id => seller.id)

    redirect_to root_path

  end

  def reject
    trade = Trade.find(params[:trade_id])
    trade.update_attributes(:trade_status => false)
    
    redirect_to users_path
  end

  def destroy
    item = Item.find(params[:id])
    item.delete
    redirect_to items_path
  end

end